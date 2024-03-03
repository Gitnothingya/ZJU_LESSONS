# 实现细节与要点

## 整体框架(自底向上完成各部分)

![img](D:\ZJUGitLab\MiniSql\MiniSQL.assets\1648365471553-1ceac0a4-e909-42c8-8bb9-516409e03492.png)





## Disk Manager(done)

- 采用共享表空间的设计，将所有的数据和索引放在同一个文件(DB File)中
- 磁盘也有类似缓冲池的缓冲区，存disk meta page和位图页



### 位图页

位图中每个**比特**（Bit）对应一个数据页的分配情况，用于标记该数据页是否空闲（`0`表示空闲，`1`表示已分配

与Bitmap Page相关的代码位于`src/include/page/bitmap_page.h`和`src/page/bitmap_page.cpp`中，以下函数需要被实现：

- `BitmapPage::AllocatePage(&page_offset)`：分配一个空闲页，并通过`page_offset`返回所分配的空闲页位于该段中的下标（从`0`开始）；

- `BitmapPage::DeAllocatePage(page_offset)`：回收已经被分配的页；
- `BitmapPage::IsPageFree(page_offset)`：判断给定的页是否是空闲（未分配）的。

此外，与该模块相关的测试代码位于`test/storage/disk_manager_test.cpp`中。

disk_manager_test

### 磁盘数据页管理

![img](D:\ZJUGitLab\MiniSql\MiniSQL.assets\1648370611392-3116a928-60ef-4df3-b0fa-5903a431729f.png)

通过增加一层元数据，来管理(位图页+数据页)的组合单元，进行一波套娃，增大磁盘文件能够维护的数据页信息。套娃是无止境的:)

因此，在这个模块中，需要实现以下函数，与之相关的代码位于`src/include/storage/disk_manager.h`和`src/storage/disk_manager.cpp`。

- `DiskManager::AllocatePage()`：从磁盘中分配一个空闲页，并返回空闲页的**逻辑页号**；
- `DiskManager::DeAllocatePage(logical_page_id)`：释放磁盘中**逻辑页号**对应的物理页。
- `DiskManager::IsPageFree(logical_page_id)`：判断该**逻辑页号**对应的数据页是否空闲。
- `DiskManager::MapPageId(logical_page_id)`：可根据需要实现。在`DiskManager`类的私有成员中，该函数可以用于将逻辑页号转换成物理页号。

此外，为了确保系统的其余部分正常工作，我们将在Disk Manager中提供一些已经实现的功能，如磁盘中数据页内容的读取和写入等等。

Note：`DiskManager`类中的`meta_data_`成员实际上是`MetaPage`在内存中的缓存（类似于`BufferPool`缓存`Page`的作用）。使用时，只需通过`reinterpret_cast`将`meta_data_`转换成`MetaPage`类型的对象即可。



**更新**：去掉了位图页缓冲区，改为从磁盘中读取位图页信息，并将修改后的信息即时写回磁盘。

**问题**：效率很低，在连续访问时往往在一个位图页上进行多次操作，没必要立刻写回，可以给位图页来个缓冲区。**为什么没有把磁盘元数据页写回去？？？？？？**

版本1：完全与磁盘交互(引导的)

版本2：来个map，用位图的分区index为键值，以位图为value，需要的时候从磁盘读进来，结束的时候全部写回去

版本3：来个完全的位图缓冲区，一开始就全部读进来，使用的时候直接用数组下标，结束的时候全部写回去

读写磁盘：

![image-20220511095752138](D:\ZJUGitLab\MiniSql\MiniSQL.assets\image-20220511095752138.png)

完全缓冲区(不包含初始读和最终写)：

![image-20220511095852322](D:\ZJUGitLab\MiniSql\MiniSQL.assets\image-20220511095852322.png)

**可见几乎是100倍的时间**



### LRU替换策略

Buffer Pool Replacer负责跟踪Buffer Pool中数据页的使用情况，并在Buffer Pool没有空闲页时决定替换哪一个数据页。在本节中，你需要实现一个基于LRU替换算法的`LRUReplacer`，`LRUReplacer`类在`src/include/buffer/lru_replacer.h`中被定义，其扩展了抽象类`Replacer`（在`src/include/buffer/replacer.h`中被定义）。`LRUReplacer`的大小默认与Buffer Pool的大小相同。

因此，在这个模块中，需要实现以下函数，与之相关的代码位于`src/buffer/lru_replacer.cpp`中。

- `LRUReplacer::Victim(*frame_id)`：替换（即删除）与所有被跟踪的页相比最近最少被访问的页，将其页帧号（即数据页在Buffer Pool的Page数组中的下标）存储在输出参数`frame_id`中输出并返回`true`，如果当前没有可以替换的元素则返回`false`；

- `LRUReplacer::Pin(frame_id)`：将数据页固定使之不能被`Replacer`替换，即从`lru_list_`中移除该数据页对应的页帧。`Pin`函数应当在一个数据页被Buffer Pool Manager固定时被调用；
- `LRUReplacer::Unpin(frame_id)`：将数据页解除固定，放入`lru_list_`中，使之可以在必要时被`Replacer`替换掉。`Unpin`函数应当在一个数据页的引用计数变为`0`时被Buffer Pool Manager调用，使页帧对应的数据页能够在必要时被替换；
- `LRUReplacer::Size()`：此方法返回当前`LRUReplacer`中能够被替换的数据页的数量。





## 缓冲区管理(Buffer Pool Manager,done)

内存分成一个个页面，由Page对象表示，包含元数据和连续的**内存空间**



数据库系统中，所有内存页面都由`Page`对象（`src/include/page/page.h`）表示，每个`Page`对象都包含了一段连续的内存空间`data_`和与该页相关的信息（如是否是脏页，页的引用计数等等）。注意，`Page`对象并不作用于唯一的数据页，**它只是一个用于存放从磁盘中读取的数据页的容器**。这也就意味着同一个`Page`对象在系统的整个生命周期内，可能会对应很多不同的物理页。`Page`对象的唯一标识符`page_id_`用于跟踪它所包含的**物理页(内存的物理页应当对应于磁盘的逻辑页)**，如果`Page`对象不包含物理页，那么`page_id_`必须被设置为`INVALID_PAGE_ID`。每个`Page`对象还维护了一个计数器`pin_count_`，它用于记录固定(Pin)该页面的线程数。Buffer Pool Manager将不允许释放已经被固定的`Page`。每个`Page`对象还将记录它是否脏页，在复用`Page`对象之前必须**将脏的内容(被写过的页，与磁盘中对应的页的数据不同了)转储到磁盘中。**

在`BufferPoolManager`的实现中，你需要用到此前已经实现的`LRUReplacer`或是其它的`Replacer`，它将被用于跟踪`Page`对象何时被访问，以便`BufferPoolManager`决定在Buffer Pool中没有空闲页可以用于分配时替换哪个数据页。

因此，在这个模块中，需要实现以下函数：

- `BufferPoolManager::FetchPage(page_id)`：根据逻辑页号获取对应的数据页，如果该数据页不在内存中，则需要从磁盘中进行读取；
- `BufferPoolManager::NewPage(&page_id)`：分配一个新的数据页，并将逻辑页号于`page_id`中返回；
- `BufferPoolManager::UnpinPage(page_id, is_dirty)`：取消固定一个数据页；
- `BufferPoolManager::FlushPage(page_id)`：将数据页转储到磁盘中；
- `BufferPoolManager::DeletePage(page_id)`：释放一个数据页；
- `BufferPoolManager::FlushAllPages()`：将所有的页面都转储到磁盘中。

对于`FetchPage`操作，如果空闲页列表（`free_list_`）中没有可用的页面并且没有可以被替换的数据页，则应返回 `nullptr`。`FlushPage`操作应该将页面内容转储到磁盘中，无论其是否被固定。



## Part2 Record Manager(done)

所有的记录都存在数据表中

Record Manager负责管理数据表中所有的记录，它能够支持记录的插入、删除与查找操作，并对外提供相应的接口。

与记录（Record）相关的概念有以下几个：

- 列（`Column`）：在`src/include/record/column.h`中被定义，用于定义和表示数据表中的**某一个字段**，即包含了这个字段的字段名、字段类型、是否唯一(**即属性定义**)等等；
- 模式（`Schema`）：在`src/include/record/schema.h`中被定义，用于表示一个数据表或是一个索引的结构。一个`Schema`由一个或多个的`Column`构成；
- 域（`Field`）：在`src/include/record/field.h`中被定义，它对应于一条记录中某一个字段的数据信息，如存储数据的数据类型，是否是空，存储数据的值等等；(**即存储信息的最小单元，表格中的一个格子**)
- 行（`Row`）：在`src/include/record/row.h`中被定义，与元组的概念等价，用于存储记录或索引键，一个`Row`由一个或多个`Field`构成。

此外，与数据类型相关的定义和实现位于`src/include/record/types.h`中。



### 序列化和反序列化(如何实现数据的持久化存储)

在实现通过堆表来管理记录之前，先做一个小的热身项目，这是一个有关数据的序列化和反序列化操作的任务。为了能够持久化存储上面提到的`Row`、`Field`、`Schema`和`Column`对象，我们需要提供一种能够将这些对象序列化成字节流（`char*`）的方法，以写入数据页中。与之相对，为了能够从磁盘中恢复这些对象，我们同样需要能够提供一种反序列化的方法，从数据页的`char*`类型的字节流中反序列化出我们需要的对象。总而言之，序列化和反序列化操作实际上是将数据库系统中的对象（包括记录、索引、目录等）进行内外存格式转化的过程，前者将内存中的逻辑数据（即对象）通过一定的方式，转换成便于在文件中存储的物理数据，后者则从存储的物理数据中恢复出逻辑数据，两者的目的都是为了实现数据的持久化

```cpp
// 逻辑对象
class A {
    int id;
    char *name;
};

// 以下是序列化和反序列化的伪代码描述
void SerializeA(char *buf, A &a) {
    // 将id写入到buf中, 占用4个字节, 并将buf向后推4个字节
    WriteIntToBuffer(&buf, a.id, 4);
    WriteIntToBuffer(&buf, strlen(a.name), 4);
    WriteStrToBuffer(&buf, a.name, strlen(a.name));
}

void DeserializeA(char *buf, A *&a) {
    a = new A();
    // 从buf中读4字节, 写入到id中, 并将buf向后推4个字节
    a->id = ReadIntFromBuffer(&buf, 4);
    // 获取name的长度len
    auto len = ReadIntFromBuffer(&buf, 4);
    a->name = new char[len];
    // 从buf中读取len个字节拷贝到A.name中, 并将buf向后推len个字节
    ReadStrFromBuffer(&buf, a->name, len);
}
```

在序列化时，除了存储成员数据外，还要存储一些辅助数据以助于反序列化时读取和分配空间，如存储字符串的长度。



- types.h

专门用来处理数据类型，包含了相同数据类型间的比较，各种类型数据的size。





为了确保我们的数据能够正确存储，我们在上述提到的`Row`、`Schema`和`Column`对象中都引入了魔数`MAGIC_NUM`，**它在序列化时被写入到字节流的头部**并在反序列化中被读出以验证我们在反序列化时生成的对象是否符合预期。

在本节中，你需要完善`Row`、`Schema`和`Column`对象各自的`SerializeTo`、`DeserializeFrom`和`GetSerializedSize`方法，具体以何种方式进行序列化（即需要序列化类中的哪些数据）由你自行决定，我们在测试代码中只会验证序列化前后的对象是否匹配。为了避免同学们对这块内容毫无头绪，我们保留了`Field`类型对象的序列化和反序列化操作，用于提供参考。

在本节中你需要完成如下函数：

- `Row::SerializeTo(*buf, *schema)`
- `Row::DeserializeFrom(*buf, *schema)`
- `Row::GetSerializedSize()`
- `Column::SerializeTo(*buf)`
- `Column::DeserializeFrom(*buf, *&column, *heap)`
- `Column::GetSerializedSize()`
- `Schema::SerializeTo(*buf)`
- `Schema::DeserializeFrom(*buf, *&schema, *heap)`
- `Schema::GetSerializedSize()`

其中，`SerializeTo`和`DeserializeFrom`函数的返回值为`uint32_t`类型，它表示在序列化和反序列化过程中`buf`指针**向后推进了多少个字节。buf的改变由调用者进行，里面不要变，就存在相应位置即可**

对于`Row`类型对象的序列化，可以通过位图的方式标记为`null`的`Field`(即 ***Null Bitmaps***)，对于`Row`类型对象的反序列化，在反序列化每一个`Field`时，需要将自身的`heap_`作为参数传入到`Field`类型的`Deserialize`函数中，这也意味着所有反序列化出来的`Field`的内存都由该`Row`对象维护。对于`Column`和`Schema`类型对象的反序列化，将使用`MemHeap`类型的对象`heap`来分配空间，**分配后新生成的对象于参数`column`和`schema`中返回**，以下是一个简单的例子：

```cpp
uint32_t Column::DeserializeFrom(char *buf,
                                 Column *&column, 
                                 MemHeap *heap){
  if (column != nullptr) {
    LOG(WARNING) << "Pointer to column is not null in column deserialize." 									 << std::endl;
  }
  /* deserialize field from buf */
  
  // can be replaced by: 
  //		ALLOC_P(heap, Column)(column_name, type, col_ind, nullable, unique);
  void *mem = heap->Allocate(sizeof(Column));
  column = new(mem)Column(column_name, type, col_ind, nullable, unique);
  return ofs;
}
```



- field的空间是由row来维护的，可以是row初始化(构造或拷贝构造)的时候申请，也可以在反序列化的时候通过field自己的反序列化函数申请到。

- column和schema都是在里面申请自身对象和空间后返回对象(所以它们的反序列函数都是静态的)

- 暂时填完了，但应该有BUG，但没关系，等看到整体后再看局部会比较清楚



### 2.3 通过堆表管理记录

#### 2.3.1 RowId

对于数据表中的每一行记录，都有一个唯一标识符`RowId`（`src/include/common/rowid.h`）与之对应。`RowId`同时具有逻辑和物理意义，在物理意义上，它是一个64位整数，**是每行记录的唯一标识**；而在逻辑意义上，它的高32位存储的是该`RowId`对应记录所在数据页的`page_id`，低32位存储的是该`RowId`在`page_id`对应的数据页中对应的是第几条记录（详见#2.3.2）。



`RowId`的作用主要体现在两个方面：一是在**索引**中，叶结点中存储的键值对是索引键`Key`到`RowId`的映射，通过索引键`Key`，沿着索引查找，我们能够得到该索引键对应记录的`RowId`，也就能够在堆表中定位到该记录；二是在堆表中，借助`RowId`中存储的逻辑信息（`page_id`和`slot_num`），可以快速地定位到其对应的记录**位于物理文件的哪个位置**。

- 用于索引查找
- 便于与磁盘交互，利于修改信息
- RowId：**| page_id(32bit) 该记录所在的数据页 | slot_num(32bit) 在对应数据页中的逻辑偏移量 |**

- 通过RowId进行定位



#### 2.3.2 堆表(管理数据页内部的具体内容(堆表页))

- 在此之前，对我们来讲数据页就是个page，有个pageid和pagesize大小的空间，但page里面具体怎么存放信息是没有被考虑的，因为磁盘管理主要进行与磁盘的交互和page的申请/返还，缓冲区也不过是对整个page的管理，现在我们已经上升到内存层面，开始对数据页的具体内容进行处理，而堆表就是这样一个建立在缓冲池上的进行**数据页组织**的数据结构，原先抽象的数据页被具体成**堆表页(继承自page)**，开始进行内部处理。注意：堆表页本身只包含处理空间的函数和辅助变量，空间是继承自page的，用GetData()进行访存操作
- 成员函数主要用于获取和更改元数据
- 一个堆表管理的是一种scheme的内容，即一张table的内容



堆表（`TableHeap`，相关定义在`src/include/storage/table_heap.h`）是一种将记录以**无序堆**的形式进行组织的数据结构，不同的数据页（`TablePage`）之间通过**双向链表**连接。堆表中的记录通过`RowId`进行定位。`RowId`记录了该行记录所在的`page_id`和`slot_num`，其中`slot_num`用于定位记录在这个数据页中的下标位置。



堆表中的每个**数据页**（与课本中的`Slotted-page Structure`给出的结构基本一致，见下图，能够支持存储**不定长的记录**）都由表头（Table Page Header）、空闲空间（Free Space）和已经插入的数据（Inserted Tuples）三部分组成，与之相关的代码位于`src/include/page/table_page.h`中，表头在页中从左往右扩展，记录了`PrevPageId`、`NextPageId`、`FreeSpacePointer`以及每条记录在`TablePage`中的偏移和长度；插入的记录在页中从右向左扩展，每次插入记录时会将`FreeSpacePointer`的位置向左移动。具体的实现细节请自行参考实现代码。

![image.png](D:\ZJUGitLab\MiniSql\MiniSQL.assets\1649165584868-b8768a94-7287-4ffa-8283-126368851db6.png)

当向堆表中插入一条记录时，一种简单的做法是，沿着`TablePage`构成的链表依次查找，直到找到第一个能够容纳该记录的`TablePage`（*First Fit* 策略）。当需要从堆表中删除指定`RowId`对应的记录时，框架中提供了一种逻辑删除的方案，即通过打上Delete Mask来标记记录被删除，在之后某个时间段再从物理意义上真正删除该记录（本节中需要完成的任务之一）。对于更新操作，需要分两种情况进行考虑，一种是`TablePage`能够容纳下更新后的数据，另一种则是`TablePage`不能够容纳下更新后的数据，前者直接在数据页中进行更新即可，后者的实现方式留给同学们自行思考。此外，在堆表中还需要实现迭代器`TableIterator`(`src/include/storage/table_iterator.h`)，以便上层模块遍历堆表中的所有记录。

**更新：在**`**TablePage::UpdateTuple**`**函数中，返回的是**`**bool**`**类型的结果，其中返回**`**true**`**表示更新成功，返回**`**false**`**表示更新失败。但更新失败可能由多种原因造成，只用一个**`**false**`**无法区分更新失败的原因。可以采取以下两种做法：（1）更改返回值为**`**int**`**类型；（2）参数列表中增加一个参数表示返回状态；****（不太理解的同学可以移步评论区看细节）**

综上，在本节中，你需要实现堆表的插入、删除、查询以及堆表记录迭代器的相关的功能，具体需要实现的函数如下：

- 由于我们是从缓冲区拿东西，用好后一定要记得取消固定，否则就没法被替代了
- 固定是它自己完成的，但是它不知道你什么时候用完，所以**取消固定必须由使用者自己调用**。





- `TableHeap:InsertTuple(&row, *txn)`: 向堆表中插入一条记录，插入记录后生成的`RowId`需要通过`row`对象返回（即`row.rid_`）；
- `TableHeap:UpdateTuple(&new_row, &rid, *txn)`：将`RowId`为`rid`的记录`old_row`替换成新的记录`new_row`，并将`new_row`的`RowId`通过`new_row.rid_`返回；
- `TableHeap:ApplyDelete(&rid, *txn)`：从物理意义上删除这条记录；
- `TableHeap:GetTuple(*row, *txn)`：获取`RowId`为`row->rid_`的记录；
- **`TableHeap:FreeHeap()`：销毁整个`TableHeap`并释放这些数据页；**  不知道干嘛？
- `TableHeap::Begin()`：获取堆表的首迭代器；
- `TableHeap::End()`：获取堆表的尾迭代器；
- `TableIterator::operator++()`：移动到下一条记录，通过`++iter`调用；
- `TableIterator::operator++(int)`：移动到下一条记录，通过`iter++`调用。

**提示：**一个使用迭代器的例子

```cpp
for (auto iter = table_heap.Begin(); iter != table_heap.End(); iter++) {
    Row &row = *iter;
    /* do some things */
}
```







- **我们现在都没有处理unpin和获取下一页的顺序，理论上来讲应该要获得下一页的id，然后unpin，然后再获取下一页！！！！**

- Row的反序列化有问题，**其实是序列化有问题**，忘记加offset了









# Part4 CATALOG MANAGER(目录管理器，开工中)

## #4.1 实验概述

- 又上了一层，开始管理和维护堆表以及索引结构，并为更上层的执行器提供接口，从而将底层彻底抽象掉。



Catalog Manager 负责管理和维护数据库的所有模式信息，包括：

- 数据库中所有表的定义信息，包括表的名称、表中字段（列）数、主键、定义在该表上的索引。
- 表中每个字段的定义信息，包括字段类型、是否唯一等。
- 数据库中所有索引的定义，包括所属表、索引建立在那个字段上等。

这些模式信息在被创建、修改和删除后还应被持久化到数据库文件中。此外，Catalog Manager还需要为上层的执行器Executor提供公共接口以供执行器获取目录信息并生成执行计划。





















