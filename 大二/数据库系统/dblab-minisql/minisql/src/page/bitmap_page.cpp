#include "page/bitmap_page.h"

template<size_t PageSize>
bool BitmapPage<PageSize>::AllocatePage(uint32_t &page_offset) {
    size_t maxsize = GetMaxSupportedSize();
    if(page_allocated_ == maxsize)    //已满
        return false;

    //没满，开始分配
    page_allocated_ ++;                             //已分配的页数加1

    page_offset = next_free_page_;                 //逻辑分配
    uint32_t byte_index = page_offset / 8;
    uint32_t bit_index = page_offset % 8;
    bytes[byte_index] |= (1 << bit_index);          //该位置1

    //找到下一空闲页index
    for(uint32_t i = next_free_page_ + 1; i < maxsize; i++)
    {
        if(IsPageFree(i % (maxsize)))
        {
            next_free_page_ = i;
            break;
        }
    }

    if(page_allocated_ == GetMaxSupportedSize())
        next_free_page_ = maxsize;            //置成无效

    return true;
}

template<size_t PageSize>
bool BitmapPage<PageSize>::DeAllocatePage(uint32_t page_offset) {
    if(IsPageFree(page_offset))                 //不能回收空闲页 
        return false;

    uint32_t byte_index = page_offset / 8;
    uint32_t bit_index = page_offset % 8;
    bytes[byte_index] ^= (1 << bit_index);      //该位置0
    page_allocated_--;

    if(next_free_page_ == 8 * MAX_CHARS)        //利用这次删除
        next_free_page_ = page_offset;
    return true;
}

template<size_t PageSize>
bool BitmapPage<PageSize>::IsPageFree(uint32_t page_offset) const {
    uint32_t byte_index = page_offset / 8;
    uint32_t bit_index = page_offset % 8;
    return IsPageFreeLow(byte_index, bit_index);
}

template<size_t PageSize>
bool BitmapPage<PageSize>::IsPageFreeLow(uint32_t byte_index, uint8_t bit_index) const {
    std::bitset<8> b = bytes[byte_index];
    if(b.test(bit_index))   //判断该bit是否为1
        return false;

    return true;
}

template
class BitmapPage<64>;

template
class BitmapPage<128>;

template
class BitmapPage<256>;

template
class BitmapPage<512>;

template
class BitmapPage<1024>;

template
class BitmapPage<2048>;

template
class BitmapPage<4096>;