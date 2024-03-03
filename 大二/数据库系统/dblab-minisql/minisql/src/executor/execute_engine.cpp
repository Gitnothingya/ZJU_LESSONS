#include "executor/execute_engine.h"
#include "glog/logging.h"
#include <iomanip>
#include <algorithm>


/**
 * @brief 
 * 构建执行器引擎，以minisqlSave文件作为存档保存数据库文件名
 * 关闭程序重新开启时需要读取文件初始化数据库引擎(init 为 false)
 */
ExecuteEngine::ExecuteEngine() {
  std::ifstream fileSave("minisqlSave");
  if(fileSave){
    vector <string> dbSave;
    string db;
    while(fileSave >> db){
      dbSave.push_back(db);
    };
    if(dbSave.size()){
      for(auto i :dbSave){
        DBStorageEngine* dbReStore = new DBStorageEngine(i,false);//即重新开启数据库引擎
        dbs_[i] = dbReStore;
      }
    }
  }
  
  cout << setiosflags(ios::left);
}

dberr_t ExecuteEngine::Execute(pSyntaxNode ast, ExecuteContext *context) {
  if (ast == nullptr) {
    return DB_FAILED;
  }
  switch (ast->type_) {
    case kNodeCreateDB:
      return ExecuteCreateDatabase(ast, context);
    case kNodeDropDB:
      return ExecuteDropDatabase(ast, context);
    case kNodeShowDB:
      return ExecuteShowDatabases(ast, context);
    case kNodeUseDB:
      return ExecuteUseDatabase(ast, context);
    case kNodeShowTables:
      return ExecuteShowTables(ast, context);
    case kNodeCreateTable:
      return ExecuteCreateTable(ast, context);
    case kNodeDropTable:
      return ExecuteDropTable(ast, context);
    case kNodeShowIndexes:
      return ExecuteShowIndexes(ast, context);
    case kNodeCreateIndex:
      return ExecuteCreateIndex(ast, context);
    case kNodeDropIndex:
      return ExecuteDropIndex(ast, context);
    case kNodeSelect:
      return ExecuteSelect(ast, context);
    case kNodeInsert:
      return ExecuteInsert(ast, context);
    case kNodeDelete:
      return ExecuteDelete(ast, context);
    case kNodeUpdate:
      return ExecuteUpdate(ast, context);
    case kNodeTrxBegin:
      return ExecuteTrxBegin(ast, context);
    case kNodeTrxCommit:
      return ExecuteTrxCommit(ast, context);
    case kNodeTrxRollback:
      return ExecuteTrxRollback(ast, context);
    case kNodeExecFile:
      return ExecuteExecfile(ast, context);
    case kNodeQuit:
      return ExecuteQuit(ast, context);
    default:
      break;
  }
  return DB_FAILED;
}

dberr_t ExecuteEngine::ExecuteCreateDatabase(pSyntaxNode ast, ExecuteContext *context) {
#ifdef ENABLE_EXECUTE_DEBUG
  LOG(INFO) << "ExecuteCreateDatabase" << std::endl;
#endif
  pSyntaxNode tmp=ast->child_;
  
  if(!tmp) {
    cout<<"[ERROR] pSyntaxNode not existed!!!"<<endl;
    return DB_FAILED;
  }
  else {
    string db_name = tmp->val_;
    if(dbs_.count(db_name)){
      cout<<"[ERROR] DataBase create failed, this database is existed!!!"<<endl;
      return DB_FAILED;
    }

    DBStorageEngine* db_new = new DBStorageEngine(db_name);
    dbs_[db_name] = db_new;
    cout<< dbs_.begin()->first << " create success, 0(rows) affected" <<endl;
    return DB_SUCCESS;
  }
  return DB_FAILED;
}

dberr_t ExecuteEngine::ExecuteDropDatabase(pSyntaxNode ast, ExecuteContext *context) {
#ifdef ENABLE_EXECUTE_DEBUG
  LOG(INFO) << "ExecuteDropDatabase" << std::endl;
#endif
  pSyntaxNode tmp = ast->child_;

  if(!tmp){
    cout<<"[ERROR] pSyntaxNode not existed!!!"<<endl;
    return DB_FAILED;
  }
  else {
    string db_name = tmp->val_;
    if(!dbs_.count(db_name)){
      cout<<"[ERROR] DataBase drop failed, this database not existed!!!"<<endl;
      return DB_FAILED;
    }

    DBStorageEngine*  db_drop =  dbs_[db_name];
    delete db_drop;
    dbs_.erase(db_name);
    if(current_db_ == db_name){
      current_db_.clear();
    }
    cout<< "[INFO] Database "<<db_name<<" drop success, 0(rows) affected" <<endl;
    return DB_SUCCESS;

  }
  return DB_FAILED;
}

dberr_t ExecuteEngine::ExecuteShowDatabases(pSyntaxNode ast, ExecuteContext *context) {
#ifdef ENABLE_EXECUTE_DEBUG
  LOG(INFO) << "ExecuteShowDatabases" << std::endl;
#endif
  int count=0;
  cout<<"-- DataBase  --"<<endl;
  for(auto db : dbs_){
    cout<<"-- "<<setw(10)<<db.first<<"--"<<endl;
    count++;
  }
  cout<<"[INFO] show database success, "<<count<<" row(s) returned"<<endl;
  return DB_SUCCESS;
}

dberr_t ExecuteEngine::ExecuteUseDatabase(pSyntaxNode ast, ExecuteContext *context) {
#ifdef ENABLE_EXECUTE_DEBUG
  LOG(INFO) << "ExecuteUseDatabase" << std::endl;
#endif

  pSyntaxNode tmp = ast->child_;
  if(!tmp){
    cout<<"[ERROR] pSyntaxNode not existed!!!"<<endl;
    return DB_FAILED;
  }
  else {
    string db_name = tmp->val_;
    if(!dbs_.count(db_name)){
      cout<<"[ERROR] Use datavase failed, database not existed!!!"<<endl;
      return DB_FAILED;
    }
    current_db_ = db_name;
    cout<< "[INFO] Use database "<<current_db_<<" success, 0(rows) affected"<<endl;
    return DB_SUCCESS;
  }
  return DB_FAILED;
}

dberr_t ExecuteEngine::ExecuteShowTables(pSyntaxNode ast, ExecuteContext *context) {
#ifdef ENABLE_EXECUTE_DEBUG
  LOG(INFO) << "ExecuteShowTables" << std::endl;
#endif
  cout<<"--Tables of "<<current_db_<<" --"<<endl;
  vector<TableInfo*> Table_show;
  dbs_[current_db_]->catalog_mgr_->GetTables(Table_show);
  for(auto table : Table_show ){
    cout<<"-- "<<setw(10)<<table->GetTableName()<<"--"<<endl;
  }

  cout<<"show tables success, "<<Table_show.size()<<" row(s) returned"<<endl;
  return DB_SUCCESS;

}

dberr_t ExecuteEngine::ExecuteCreateTable(pSyntaxNode ast, ExecuteContext *context) {
#ifdef ENABLE_EXECUTE_DEBUG
  LOG(INFO) << "ExecuteCreateTable" << std::endl;
#endif
  if(current_db_.size()==0){
    cout<<"[ERROR] create table failed, No database selected!!!"<<endl;
    return DB_FAILED;
  }
  else {
    pSyntaxNode tmp = ast->child_;
    string newTableName = tmp->val_;  //新建表的名称
    TableInfo* newTableInfo = nullptr; //建立空表信息指针
    //TableMetadata* newTableMetaData = nullptr;    //表的基本信息,调用函数自动创建
    std::vector<Column *> newColumns;   //建立属性（列）的动态数组
    Schema* newSchema;                //表的模式（即属性集合）

    //不确定语法树结构是否规整，在此多写判断便于后期debug。
    if(tmp->next_) tmp = tmp->next_;
    else cout<<"[ERROR] pSyntaxNode indexDefineList error!!!"<<endl;
    if(tmp->child_) tmp = tmp->child_;
    else cout<<"[ERROR] pSyntaxNode indexColumDefine error!!!"<<endl;
    
    vector<string> AllName;     //所有列名
    vector<TypeId> AllTypeId;   //所有列类型
    vector<uint32_t> Allsize;   //所有列大小
    vector<uint32_t> Allindex;  //所有列的表序号
    vector<bool>  Allnull;      //所有列的 是否可空
    vector<bool>  Alluniq;      //所有列的 是否uniq
    int countColumn=0;    //计算属性数，需要标记属性在表中的位置。
    vector<string> PKey;   //主键
    while(tmp){
      if(tmp->type_==kNodeColumnDefinition){//定义属性标志节点
          bool is_unique = false;
          string str;
          if(tmp->val_) str = tmp->val_;
          if(str=="unique") is_unique = true;
          Alluniq.push_back(is_unique);
          Allnull.push_back(false);

          pSyntaxNode branch;     //用于遍历定义节点的分支具体信息节点。
          branch = tmp->child_;   //属性名称节点；
          string newColumnName = branch->val_;      //属性名
          AllName.push_back(newColumnName);

          branch = branch ->next_;
          TypeId newColumnType ;      //属性类别（char,int,float）
          string TypeString = branch ->val_;
          if(TypeString == "char") newColumnType = kTypeChar;
          else if(TypeString == "int") newColumnType = kTypeInt;
          else if(TypeString == "float") {newColumnType = kTypeFloat;}
          AllTypeId.push_back(newColumnType);

          uint32_t size=0;
          if(newColumnType==kTypeChar){
            branch = branch->child_;
            size = atoi(branch->val_);
            if(size<1){
              cout<<"[ERROR] the size of char can't be negative."<<endl;
              return DB_FAILED;
            }
          }
          Allsize.push_back(size);

          Allindex.push_back(countColumn);
          countColumn++;

          tmp=tmp->next_;

      } else if(tmp->type_==kNodeColumnList){//定义主键标志节点
        pSyntaxNode branch=tmp->child_;
        while(branch){
          string str = branch ->val_;
          PKey.push_back(str);
          branch = branch->next_;
        }
        tmp=tmp->next_;
      }
    }

    for(int i=0 ; i < (int)AllName.size() ; i++){//标记主键
      if(count(PKey.begin() ,PKey.end(), AllName[i])){
        Alluniq[i] = true;
        Allnull[i] = false;
      }
    }

    for(int i=0;i<(int)AllName.size() ; i++){
      //判断是否是字符串，分开构造；
      Column* newC;
      if(AllTypeId[i]==kTypeChar) newC = new Column(AllName[i],AllTypeId[i],Allsize[i],Allindex[i],Allnull[i],Alluniq[i]);
      else newC = new Column(AllName[i],AllTypeId[i],Allindex[i],Allnull[i],Alluniq[i]);
      
      newColumns.push_back(newC); 
    }
    newSchema = new TableSchema(newColumns);//建立新模式

    if(dbs_[current_db_]->catalog_mgr_->CreateTable(newTableName,newSchema,context->txn_,newTableInfo)==DB_TABLE_ALREADY_EXIST){
      cout<<"[ERROR] create table failed, table "<<newTableName<<" is already exists!!! "<<endl;
      return DB_FAILED;
    }
    string P = "primary";
    IndexInfo* newIndexInfo=nullptr;
    if(dbs_[current_db_]->catalog_mgr_->CreateIndex(newTableName,P,PKey,context->txn_,newIndexInfo)!=DB_SUCCESS){//创建主键索引
      cout<<"[ERROR] primary key create failed "<<endl;
      return DB_FAILED;
    }
    cout<<"[INFO] create table "<<newTableName<<" success, 0 row(s) affected"<<endl;
    return DB_SUCCESS;
  }
  return DB_FAILED;
}

dberr_t ExecuteEngine::ExecuteDropTable(pSyntaxNode ast, ExecuteContext *context) {
#ifdef ENABLE_EXECUTE_DEBUG
  LOG(INFO) << "ExecuteDropTable" << std::endl;
#endif
  if(current_db_.size()==0){
    cout<<"[ERROR] drop table failed, No database selected!!!"<<endl;
    return DB_FAILED;
  }


  string db_del = ast->child_->val_;
  if(dbs_[current_db_]->catalog_mgr_->DropTable(db_del)==DB_TABLE_NOT_EXIST){
    cout<<"[ERROR] Drop table failed, table "<<db_del<<" not exists!!!"<<endl;
    return DB_FAILED;
  }
  cout <<"[INFO] Drop talbe "<<db_del<<" success, 0 row(s) affected "<<endl;
  return DB_SUCCESS;

}

dberr_t ExecuteEngine::ExecuteShowIndexes(pSyntaxNode ast, ExecuteContext *context) {
#ifdef ENABLE_EXECUTE_DEBUG
  LOG(INFO) << "ExecuteShowIndexes" << std::endl;
#endif
  if(current_db_.size()==0){
    cout<<"[ERROR] show indexes failed, No database selected!!!"<<endl;
    return DB_FAILED;
  }

int indexCount=0;
  vector<TableInfo *> tables;
  dbs_[current_db_]->catalog_mgr_->GetTables(tables);
  for(auto t : tables){
    cout<<t->GetTableName()<<" :"<<endl;
    vector<IndexInfo *> indexes;
    dbs_[current_db_]->catalog_mgr_->GetTableIndexes(t->GetTableName(), indexes);
    for(auto name : indexes){
      cout << "  "<<name->GetIndexName()<<endl;
      indexCount++;
    }
  }
  cout<<"[INFO] Show indexes success, "<<indexCount<<" row(s) returned"<<endl;
  return DB_SUCCESS;

}

dberr_t ExecuteEngine::ExecuteCreateIndex(pSyntaxNode ast, ExecuteContext *context) {
#ifdef ENABLE_EXECUTE_DEBUG
  LOG(INFO) << "ExecuteCreateIndex" << std::endl;
#endif
if(current_db_.size()==0){
  cout<<"[ERROE] no selected database when create index!!!"<<endl;
  return DB_FAILED;
}
  pSyntaxNode tmp=ast->child_;
  string newIndexName = tmp ->val_; //新索引名称
  
  tmp = tmp->next_;
  string table = tmp->val_;   //索引依赖的表名称
  TableInfo* tableinfo = nullptr;
  dbs_[current_db_]->catalog_mgr_->GetTable(table,tableinfo);

  tmp = tmp->next_->child_;
  vector<string> index_keys;
  while(tmp){
    string ColumnName = tmp->val_;
    index_keys.push_back(ColumnName);
    vector<Column*> check = tableinfo->GetSchema()->GetColumns();//获取属性
    // int flag = 0;
    for(auto single : check){
      if(single->GetName()==ColumnName && (!single->IsUnique())){//非unique属性
        cout<<"[ERROR] Create index failed, index must be unique!!! "<<endl;
        return DB_FAILED;
      }
    }

    tmp = tmp->next_;
  }
  IndexInfo* index_info = nullptr;
  if(dbs_[current_db_]->catalog_mgr_->CreateIndex(table,newIndexName,index_keys,context->txn_,index_info) != DB_SUCCESS){
    cout<<"[ERROR] create index failed"<<endl;//重复或无此表都会导致失败，必要可调出信息
    return DB_FAILED;
  }
cout<<index_info->GetIndexName()<<endl; 
  cout<<"[INFO] create index "<<newIndexName<<" success, 0 row(s) affected"<<endl;

  return DB_SUCCESS;
  //return DB_FAILED;
}

dberr_t ExecuteEngine::ExecuteDropIndex(pSyntaxNode ast, ExecuteContext *context) {
#ifdef ENABLE_EXECUTE_DEBUG
  LOG(INFO) << "ExecuteDropIndex" << std::endl;
#endif
  if(current_db_.size()==0){
    cout<<"[ERROE] no selected database when drop index!!!"<<endl;
    return DB_FAILED;
  }

  pSyntaxNode tmp = ast->child_; 
  string index_del = tmp->val_;

  vector<TableInfo *> tables;
  dbs_[current_db_]->catalog_mgr_->GetTables(tables);
  bool flag=false;
  for(auto t : tables){
    // vector<IndexInfo *> indexes;
    // dbs_[current_db_]->catalog_mgr_->GetTableIndexes(t->GetTableName(), indexes);
    // cout<<t->GetTableName()<<"   "<<index_del<<endl;
      if(dbs_[current_db_]->catalog_mgr_->DropIndex(t->GetTableName(),index_del) == DB_SUCCESS){
        flag = true;
      }
      if(flag==true) break;
  }

  if(flag==false){
    cout<<"[ERROR] Drop index failed, no such index!!!"<<endl;
    return DB_FAILED;
  }

  cout<<"[INFO] Drop index success, 0 row(s) affected"<<endl;
  return DB_SUCCESS;

  //return DB_FAILED;
}

class cmpData{
  public:
    string opChar;      //比较符
    uint32_t table_ind;//属性在表中的列数
    Field  value;      //值
    explicit cmpData(string op, uint32_t ind, TypeId type, int32_t i):opChar(op), table_ind(ind), value(type,i) {}
    explicit cmpData(string op, uint32_t ind, TypeId type, float f):opChar(op), table_ind(ind), value(type,f) {}
    explicit cmpData(string op, uint32_t ind, TypeId type, char *data, uint32_t len, bool manage_data):opChar(op), table_ind(ind), value(type, data, len, manage_data) {}
};//用于构造比较的值


dberr_t getOnecmpData(vector<cmpData>& v,pSyntaxNode ast,TableInfo* tableinfo){
  pSyntaxNode tmp = ast;
  string op_val = tmp ->val_;//比较操作符
  tmp = tmp->child_;
  string columnName = tmp->val_;//属性名
  tmp = tmp->next_;
  string cmpValue = tmp ->val_;//比较的值

  //找到属性位置
  uint32_t ind;
  if(tableinfo->GetSchema()->GetColumnIndex(columnName,ind)){
    cout<<"[ERROR] name wrong in cmpData!!!!"<<endl;
    return DB_FAILED;
  }
  TypeId type = tableinfo->GetSchema()->GetColumn(ind)->GetType();
  if(type==kTypeInt){
    int32_t IntD = stoi(cmpValue);
    cmpData SingleField(op_val,ind,type,IntD);
    v.push_back(SingleField);
  }else if(type==kTypeFloat){
    float FloatD = stof(cmpValue);
    cmpData SingleField(op_val,ind,type,FloatD);
    v.push_back(SingleField);
  }else if(type==kTypeChar){
    cmpData SingleField(op_val,ind,type,tmp->val_,cmpValue.length()+1,true);
    v.push_back(SingleField);
  }
  return DB_SUCCESS;
}



dberr_t ExecuteEngine::ExecuteSelect(pSyntaxNode ast, ExecuteContext *context) {
#ifdef ENABLE_EXECUTE_DEBUG
  LOG(INFO) << "ExecuteSelect" << std::endl;
#endif
    if(current_db_.size()==0){
      cout<<"[ERROE] no selected database when select !!!"<<endl;
      return DB_FAILED;
    }

  pSyntaxNode tmp = ast->child_;
  string tablename = tmp->next_->val_;//表名,此处跳过了显示属性的节点，在后面检查
  TableInfo* tableinfo = nullptr;  
  dbs_[current_db_]->catalog_mgr_->GetTable(tablename,tableinfo);//获取表信息


  vector<uint32_t> SelectInd;
  if(tmp->type_==kNodeAllColumns){//选择所有的列
    for(uint32_t i=0; i < tableinfo->GetSchema()->GetColumnCount();i++){
      SelectInd.push_back(i);
    }
  }
  else if(tmp->type_ == kNodeColumnList){//选择部分列。
    pSyntaxNode branch = tmp->child_;
    while(branch){
      uint32_t ind;
      string name = branch ->val_;//列名字
      if(tableinfo->GetSchema()->GetColumnIndex(name,ind)){
        cout<<"[ERROR] name wrong!!!"<<endl;
        return DB_FAILED;
      }
      SelectInd.push_back(ind);
      branch = branch ->next_;  //前往下一节点
    }
  } else {
    cout<<"[ERROR] select error!!!"<<endl;
    return DB_FAILED;
  }

//以下对语法树进行遍历，初始化比较值
  tmp = tmp->next_->next_;
  if(!tmp){
    for(auto showColumn: SelectInd){//显示需要的属性名
    cout <<"-- "<<setw(10)<<tableinfo->GetSchema()->GetColumn(showColumn)->GetName()<<" ";
    }
    cout<<endl;
    int RowCount=0;//计数器，返回的记录数
    auto itr = tableinfo->GetTableHeap()->Begin(context->txn_);
    while(itr != tableinfo->GetTableHeap()->End() ){
      for(auto showColumn : SelectInd ){
        if(itr->GetFields()[showColumn]->GetType() == kTypeInt){
          cout<<"-- "<<setw(10)<<itr->GetFields()[showColumn]->GetInt()<<" ";
        }else if(itr->GetFields()[showColumn]->GetType() == kTypeFloat){
          cout<<"-- "<<setw(10)<<itr->GetFields()[showColumn]->GetFloat()<<" ";
        }else if(itr->GetFields()[showColumn]->GetType() == kTypeChar){
          cout<<"-- "<<setw(10)<<itr->GetFields()[showColumn]->GetData()<<" ";
        }
      }
      RowCount++;
      cout<<endl;
      itr++;
    }
    cout<<"[INFO] select success, "<<RowCount<<" row(s) returned";
    return DB_SUCCESS;
  }
  if(tmp->type_!=kNodeConditions){
    cout<<"[ERROR] pSyntaxNode error, no condition node!!!"<<endl;
    return DB_FAILED;
  }
  tmp = tmp->child_;//第一个条件节点，判断是否有连接符，只能查一个连接符
  if(tmp->type_ == kNodeConnector){
    string connector = tmp->val_;//连接符
    tmp = tmp->child_;
    vector <vector<cmpData>> cmpAllCon;
    vector<cmpData> cmpOneCon;
    if(connector == "and"){
      getOnecmpData(cmpOneCon,tmp,tableinfo);
      getOnecmpData(cmpOneCon,tmp->next_,tableinfo);
      cmpAllCon.push_back(cmpOneCon);
      cmpOneCon.clear();
    }else if(connector == "or"){
      getOnecmpData(cmpOneCon,tmp,tableinfo);
      cmpAllCon.push_back(cmpOneCon);
      cmpOneCon.clear();
      getOnecmpData(cmpOneCon,tmp->next_,tableinfo);
      cmpAllCon.push_back(cmpOneCon);
      cmpOneCon.clear();
    }
    auto table_iter  = tableinfo->GetTableHeap()->Begin(context->txn_);
    auto table_end = tableinfo ->GetTableHeap()->End();
    
    for(auto showColumn: SelectInd){//显示需要的属性名
    cout <<"-- "<<setw(10)<<tableinfo->GetSchema()->GetColumn(showColumn)->GetName()<<" ";
    }
    cout<<endl;
    uint32_t RowCount=0;
    //开始遍历整张表，对每条记录查看是否符和条件
    for(;table_iter != table_end; table_iter++ ){
      auto record = table_iter->GetFields();
      bool ismatch = false;

      for(uint32_t i=0;i<cmpAllCon.size();i++){
        for(uint32_t j=0;j<cmpAllCon[i].size();j++){
          auto rowData = record[cmpAllCon[i][j].table_ind];
          string op = cmpAllCon[i][j].opChar;

          if(op =="="){
            if(rowData->CompareEquals(cmpAllCon[i][j].value));
            else break;
          }else if(op == "<>"){
            if(rowData->CompareNotEquals(cmpAllCon[i][j].value));
            else break;
          }else if(op == "<"){
            if(rowData->CompareLessThan(cmpAllCon[i][j].value));
            else break;
          }else if(op == "<="){
            if(rowData->CompareLessThanEquals(cmpAllCon[i][j].value));
            else break;
          }else if(op == ">"){
            if(rowData->CompareGreaterThan(cmpAllCon[i][j].value));  
            else break;
          }else if(op == ">="){
            if(rowData->CompareGreaterThanEquals(cmpAllCon[i][j].value));
            else break;
          }
  
          if(j == cmpAllCon[i].size() - 1) ismatch = true;
        }
        if(ismatch == true ) break;
      }
      if(ismatch){
        for(auto showColumn : SelectInd ){
          if(table_iter->GetFields()[showColumn]->GetType() == kTypeInt){
            cout<<"-- "<<setw(10)<<table_iter->GetFields()[showColumn]->GetInt()<<" ";
          }else if(table_iter->GetFields()[showColumn]->GetType() == kTypeFloat){
            cout<<"-- "<<setw(10)<<table_iter->GetFields()[showColumn]->GetFloat()<<" ";
          }else if(table_iter->GetFields()[showColumn]->GetType() == kTypeChar){
            cout<<"-- "<<setw(10)<<table_iter->GetFields()[showColumn]->GetData()<<" ";
          }
        }
        cout<<endl;
        RowCount++;
      }
    }

    cout<<"[INFO] select success, "<<RowCount<<" row(s) returned "<<endl;
    return DB_SUCCESS;
  }
  else if(tmp->type_ == kNodeCompareOperator){
    vector<cmpData> v;
    getOnecmpData(v,tmp,tableinfo);

    //是否需要索引的检查
    if(v[0].opChar=="="){
      vector<IndexInfo*> indexinfos;
      dbs_[current_db_]->catalog_mgr_->GetTableIndexes(tablename,indexinfos);
      for(auto i : indexinfos){
        if(i->GetIndexKeySchema()->GetColumn(0)->GetTableInd()==v[0].table_ind){//属性位置对上了
          vector<Field> singleColumn;
          singleColumn.push_back(v[0].value);
          Row check(singleColumn);
          vector<RowId> res;
          if(i->GetIndex()->ScanKey(check,res,context->txn_)!=DB_SUCCESS){//没有相关记录
            cout<<"[INFO] selected data not exist, 0 row(s) returned,"<<endl;
            return DB_SUCCESS;
          }
          else {
            Row* SelectedRow = new Row(res[0]);
            tableinfo->GetTableHeap()->GetTuple(SelectedRow,context->txn_);
            for(auto showColumn: SelectInd){
              cout<<"-- "<<setw(10)<<tableinfo->GetSchema()->GetColumn(showColumn)->GetName()<<" ";
            }
            cout<<endl;
            for(auto showColumn: SelectInd){//逐个显示
              if(SelectedRow->GetFields()[showColumn]->GetType() == kTypeInt){
                cout<<"-- "<<setw(10)<<SelectedRow->GetFields()[showColumn]->GetInt()<<" ";
              }else if(SelectedRow->GetFields()[showColumn]->GetType() == kTypeFloat){
                cout<<"-- "<<setw(10)<<SelectedRow->GetFields()[showColumn]->GetFloat()<<" ";
              }else if(SelectedRow->GetFields()[showColumn]->GetType() == kTypeChar){
                cout<<"-- "<<setw(10)<<SelectedRow->GetFields()[showColumn]->GetData()<<" ";
              }
            }
            cout<<endl;
            cout<<"[INFO] select success, 1 row retured "<<endl;
            return DB_SUCCESS;
          }
        }
      }
    }

  //无有效索引，不是相等查找
    auto itr = tableinfo->GetTableHeap()->Begin(context->txn_);
    for(auto showColumn: SelectInd){//显示列名
      cout<<"-- "<<setw(10)<<tableinfo->GetSchema()->GetColumn(showColumn)->GetName()<<" ";
    }
    cout<<endl;
    int RowCount=0;
    while(itr != tableinfo->GetTableHeap()->End()){
      Field*  rowData = itr->GetField(v[0].table_ind);
      string op = v[0].opChar;
      if(op =="="){
        if(rowData->CompareEquals(v[0].value)){
          for(auto showColumn: SelectInd){
            if(itr->GetFields()[showColumn]->GetType() == kTypeInt){
              cout<<"-- "<<setw(10)<<itr->GetFields()[showColumn]->GetInt()<<" ";
            }else if(itr->GetFields()[showColumn]->GetType() == kTypeFloat){
              cout<<"-- "<<setw(10)<<itr->GetFields()[showColumn]->GetFloat()<<" ";
            }else if(itr->GetFields()[showColumn]->GetType() == kTypeChar){
              cout<<"-- "<<setw(10)<<itr->GetFields()[showColumn]->GetData()<<" ";
            }
          }
          cout<<endl;
          RowCount++;
        }
      }else if(op == "<>"){
        if(rowData->CompareNotEquals(v[0].value)){
          for(auto showColumn: SelectInd){
            if(itr->GetFields()[showColumn]->GetType() == kTypeInt){
              cout<<"-- "<<setw(10)<<itr->GetFields()[showColumn]->GetInt()<<" ";
            }else if(itr->GetFields()[showColumn]->GetType() == kTypeFloat){
              cout<<"-- "<<setw(10)<<itr->GetFields()[showColumn]->GetFloat()<<" ";
            }else if(itr->GetFields()[showColumn]->GetType() == kTypeChar){
              cout<<"-- "<<setw(10)<<itr->GetFields()[showColumn]->GetData()<<" ";
            }
          }
          cout<<endl;
          RowCount++;
        }
      }else if(op == "<"){
        if(rowData->CompareLessThan(v[0].value)){
          for(auto showColumn: SelectInd){
            if(itr->GetFields()[showColumn]->GetType() == kTypeInt){
              // cout<<"int2";
              cout<<"-- "<<setw(10)<<itr->GetFields()[showColumn]->GetInt()<<" ";
            }else if(itr->GetFields()[showColumn]->GetType() == kTypeFloat){
              // cout<<"float2";
              cout<<"-- "<<setw(10)<<itr->GetFields()[showColumn]->GetFloat()<<" ";
            }else if(itr->GetFields()[showColumn]->GetType() == kTypeChar){
              cout<<"-- "<<setw(10)<<itr->GetFields()[showColumn]->GetData()<<" ";
            }
          }
          cout<<endl;
          RowCount++;
        }
      }else if(op == "<="){
        if(rowData->CompareLessThanEquals(v[0].value)){
          for(auto showColumn: SelectInd){
            if(itr->GetFields()[showColumn]->GetType() == kTypeInt){
              cout<<"-- "<<setw(10)<<itr->GetFields()[showColumn]->GetInt()<<" ";
            }else if(itr->GetFields()[showColumn]->GetType() == kTypeFloat){
              cout<<"-- "<<setw(10)<<itr->GetFields()[showColumn]->GetFloat()<<" ";
            }else if(itr->GetFields()[showColumn]->GetType() == kTypeChar){
              cout<<"-- "<<setw(10)<<itr->GetFields()[showColumn]->GetData()<<" ";
            }
          }
          cout<<endl;
          RowCount++;
        }
      }else if(op == ">"){
        if(rowData->CompareGreaterThan(v[0].value)){
          for(auto showColumn: SelectInd){
            if(itr->GetFields()[showColumn]->GetType() == kTypeInt){
              cout<<"-- "<<setw(10)<<itr->GetFields()[showColumn]->GetInt()<<" ";
            }else if(itr->GetFields()[showColumn]->GetType() == kTypeFloat){
              cout<<"-- "<<setw(10)<<itr->GetFields()[showColumn]->GetFloat()<<" ";
            }else if(itr->GetFields()[showColumn]->GetType() == kTypeChar){
              cout<<"-- "<<setw(10)<<itr->GetFields()[showColumn]->GetData()<<" ";
            }
          }
          cout<<endl;
          RowCount++;
        }
      }else if(op == ">="){
        if(rowData->CompareGreaterThanEquals(v[0].value)){
          for(auto showColumn: SelectInd){
            if(itr->GetFields()[showColumn]->GetType() == kTypeInt){
              cout<<"-- "<<setw(10)<<itr->GetFields()[showColumn]->GetInt()<<" ";
            }else if(itr->GetFields()[showColumn]->GetType() == kTypeFloat){
              cout<<"-- "<<setw(10)<<itr->GetFields()[showColumn]->GetFloat()<<" ";
            }else if(itr->GetFields()[showColumn]->GetType() == kTypeChar){
              cout<<"-- "<<setw(10)<<itr->GetFields()[showColumn]->GetData()<<" ";
            }
          }
          cout<<endl;
          RowCount++;
        }
      }
      itr++;
    }
    cout<<"[INFO] select success, "<<RowCount<<" row(s) returned"<<endl;
    return DB_SUCCESS;
  }
  cout<<"[ERROR] end"<<endl;
  return DB_FAILED;
}

dberr_t ExecuteEngine::ExecuteInsert(pSyntaxNode ast, ExecuteContext *context) {
#ifdef ENABLE_EXECUTE_DEBUG
  LOG(INFO) << "ExecuteInsert" << std::endl;
#endif
    if(current_db_.size()==0){
      cout<<"[ERROE] no selected database when insert !!!"<<endl;
      return DB_FAILED;
    }

  pSyntaxNode tmp = ast->child_;
  string table_in = tmp->val_;  //得到表名t
  TableInfo* tableinfo = nullptr;
  dbs_[current_db_]->catalog_mgr_->GetTable(table_in,tableinfo);
  Schema* schema = tableinfo->GetSchema();
  vector<Column*> columns = schema->GetColumns();
  vector<TypeId> types ;
  for(auto clm :columns){
    types.push_back(clm->GetType());
  }

  uint32_t dataCount=0;
  tmp = tmp ->next_;
  tmp = tmp->child_;

  vector<Field> fields;

  while(tmp){
    if(tmp->type_ ==kNodeNumber){
      if(types[dataCount]==kTypeChar ){
        cout<<"[ERROR] the data type of "<<dataCount+1<<" not match!!!"<<endl;
        return DB_FAILED;
      }
      if(types[dataCount]==kTypeInt){
        int32_t data = atoi(tmp->val_);
        fields.push_back(Field(kTypeInt,data));//整型数据装载
      }else if(types[dataCount]==kTypeFloat){
        float data = atof(tmp->val_);
        fields.push_back(Field(kTypeFloat,data));//浮点数据
      }
    }else if(tmp->type_ == kNodeString){
      string str = tmp->val_;
      fields.push_back(Field(kTypeChar,tmp->val_,str.size()+1,true));//字符串
    }
    dataCount++;
    tmp = tmp->next_;//下一个数据或尾部
  }

  if(fields.size()!=types.size()){
    cout<<"[ERROR] the number of values not match!!!";
    return DB_FAILED;
  }

  vector<IndexInfo*> indexes;
  dbs_[current_db_]->catalog_mgr_->GetTableIndexes(table_in,indexes);
  for(auto index: indexes){
    if(index->GetIndexName() == "primary"){
      const Column* column (index -> GetIndexKeySchema()->GetColumn(0));
      uint32_t ind=0;
      for(auto tableclumn : index->GetTableInfo()->GetSchema()->GetColumns() ){
        if(tableclumn->GetName()==column->GetName()){
          break;
        }
        else ind++;
      }
      vector <Field> singleClomun;
      singleClomun.push_back(fields[ind]);
      Row check(singleClomun);
      vector<RowId> res;
      if(index->GetIndex()->ScanKey(check, res, context->txn_)==DB_SUCCESS){
        cout<<"[ERROR] Duplicate entry for primary key !!!"<<endl;
        return DB_FAILED;
      }
      if(res.size()!=0){
      }
    } else{
      const Column* column (index -> GetIndexKeySchema()->GetColumn(0));
      uint32_t ind=0;
      for(auto tableclumn : index->GetTableInfo()->GetSchema()->GetColumns() ){
        if(tableclumn->GetName()==column->GetName()){
          break;
        }
        else ind++;
      }
      vector <Field> singleClomun;
      singleClomun.push_back(fields[ind]);
      Row check(singleClomun);
      vector<RowId> res;
      if(index->GetIndex()->ScanKey(check, res, context->txn_)==DB_SUCCESS){
        cout<<"[ERROR] Duplicate entry for unique key "<< column->GetName() <<" !!!"<<endl;
        return DB_FAILED;
      }
    }
  }


  Row newRow(fields); //局部变量即可，方便及时析构回收内存；

  if(tableinfo->GetTableHeap()->InsertTuple(newRow,context->txn_)){
  }//返回的row已经有了rowid;


  Row* aaa = new Row(newRow.GetRowId());
  tableinfo->GetTableHeap()->GetTuple(aaa, nullptr);

  for(auto index : indexes){//维护索引，插入新值，注意索引插入的row需要重新构造
    vector<Field> indexField;
    indexField.push_back(fields[index->GetIndexKeySchema()->GetColumn(0)->GetTableInd()]);
    Row indexRow(indexField);
    if(index->GetIndex()->InsertEntry(indexRow,newRow.GetRowId(),context->txn_)==DB_SUCCESS){
    }
  }
  cout<<"[INFO] Insert into "<<table_in<<" success, 1 row(s) affected"<<endl;
  return DB_SUCCESS;
}

dberr_t ExecuteEngine::ExecuteDelete(pSyntaxNode ast, ExecuteContext *context) {
#ifdef ENABLE_EXECUTE_DEBUGx
  LOG(INFO) << "ExecuteDelete" << std::endl;
#endif
    if(current_db_.size()==0){
      cout<<"[ERROE] no selected database when delete !!!"<<endl;
      return DB_FAILED;
    }
  pSyntaxNode tmp = ast->child_;
  string tablename = tmp->val_;//获取表的名字
  TableInfo* tableinfo=nullptr;
  dbs_[current_db_]->catalog_mgr_->GetTable(tablename,tableinfo);//获取表信息

  tmp = tmp->next_;//条件标识节点，无用
  tmp = tmp->child_;//转移到第一个连接符或操作符

  //cmpData是我构造的一个类，用于存储比较的数据，即存储比较符，比较数在表中的位置，与一个Field
  //全部是public，可以访问，构造时要显式调用构造函数
  vector<cmpData> cmpOneData;//存储一组条件，即全部都需要满足
  vector<vector<cmpData>> cmpAllData;//存储所有组条件，即只要其中一组符合即可，
  //实际上由于只判断了一个连接符，cmpOneData最多因为and而存储两个，此时cmpAllData只存一个
  //而or时cmpOneData中只存一个就被存入cmpAllData中，cmpAllData中有两个只存了一个元素的vector
  //最终cmpOneData会被清空，只需要使用cmpAlldata中的数据

  if(tmp->type_ == kNodeConnector){
    string connector = tmp->val_;
    tmp = tmp ->child_;
    if(connector == "and"){
      getOnecmpData(cmpOneData,tmp,tableinfo);//第一个比较数据
      getOnecmpData(cmpOneData,tmp->next_,tableinfo);//第二个比较数据
      cmpAllData.push_back(cmpOneData);//and条件须同时满足，放在一组中
      cmpOneData.clear();
    }else if(connector == "or"){
      getOnecmpData(cmpOneData,tmp,tableinfo);
      cmpAllData.push_back(cmpOneData);
      cmpOneData.clear();
      getOnecmpData(cmpOneData,tmp->next_,tableinfo);
      cmpAllData.push_back(cmpOneData);
      cmpOneData.clear();
    }
  }else if(tmp->type_ == kNodeCompareOperator){
    getOnecmpData(cmpOneData,tmp,tableinfo);
    cmpAllData.push_back(cmpOneData);
    cmpOneData.clear();
  }
/**
 * 通过cmpAllData就有了所有的判断条件，接下来需要遍历所有条件去获取记录
 * 建议使用整个遍历，索引比较难实现，而且测试中也没有删除、更新的索引使用比较要求
 * cmpAlldata 层次
 *    1. 它本身是一个存vector<cmpData>的vector
 *        2. cmpData 包括 
 *        string opchar(该条数据使用的比较符，即= ,<>,<,>等)
 *        uint32_t table_ind (即数据对应的表的列索引，要和第几列比较)
 *        Field value(即一个Field对象，用于记录数值)
 * Field内有比较的函数比如CompareNotEquals(参数) 刚好对应六种比较符
 * 
 * 接下来就是遍历整张表，然后对于每条记录，比较所有条件，符合条件的进行删除
 * 表信息已存入 tableinfo 变量
 * 要调用其他信息？dbs_[current_db_] 即当前使用数据库，依次指针就有了其他函数了
 */
  auto table_iter = tableinfo->GetTableHeap()->Begin(context->txn_);
  auto table_end = tableinfo->GetTableHeap()->End();
  int affect_cnt = 0;
  //开始遍历整张表, 对每条记录查看是否符合条件
  for( ; table_iter != table_end; table_iter++)
  {
    auto record = table_iter->GetFields();
    bool ismatch = false;

    for(uint32_t i = 0; i < cmpAllData.size(); i++)
    {
      for(uint32_t j = 0; j < cmpAllData[i].size(); j++)
      {
        auto rowData = record[cmpAllData[i][j].table_ind];
        string op = cmpAllData[i][j].opChar;

        if(op =="="){
          if(rowData->CompareEquals(cmpAllData[i][j].value));
          else break;
        }else if(op == "<>"){
          if(rowData->CompareNotEquals(cmpAllData[i][j].value));
          else break;
        }else if(op == "<"){
          if(rowData->CompareLessThan(cmpAllData[i][j].value));
          else break;
        }else if(op == "<="){
          if(rowData->CompareLessThanEquals(cmpAllData[i][j].value));
          else break;
        }else if(op == ">"){
          if(rowData->CompareGreaterThan(cmpAllData[i][j].value));  
          else break;
        }else if(op == ">="){
          if(rowData->CompareGreaterThanEquals(cmpAllData[i][j].value));
          else break;
        }

        if(j == cmpAllData[i].size() - 1) ismatch = true;
      }

      if(ismatch == true) break;
    }

    if(ismatch)
    {
      RowId rid = table_iter->GetRowId();
      if(tableinfo->GetTableHeap()->MarkDelete(rid, context->txn_))  //不确定是逻辑删除还是直接删除
      {
        affect_cnt++;
      }
      else cout << "delete error!" << endl;
    }

  }

  cout << "[INFO] delete success, " << affect_cnt << "(rows) affected" << endl;
  return DB_SUCCESS;
}

dberr_t ExecuteEngine::ExecuteUpdate(pSyntaxNode ast, ExecuteContext *context) {
#ifdef ENABLE_EXECUTE_DEBUG
  LOG(INFO) << "ExecuteUpdate" << std::endl;
#endif
/**
 * 更新需要更新的值和条件
 * 因为怕构造的Field反而出问题，我会再构造一个类(UpdateData)来提供给你属性的名字和值，
 * 当然更新的属性可能多个，实际提供的依旧是容器  vector<UpdateData> update
 * tableinfo 也提供了表信息，可以构造Field或者直接用我给的两个信息进行更新
 * cmpOneData 和cmpAllData 和删除函数中是一样的，用于存储条件
 * 通过迭代器遍历记录并以此比较条件即可
 * 
 */

    pSyntaxNode tmp = ast->child_;
    string tablename = tmp->val_;//获取表的名字
    TableInfo* tableinfo=nullptr;
    dbs_[current_db_]->catalog_mgr_->GetTable(tablename,tableinfo);//获取表信息

class UpdateData{
public:
  string column;
  string value;//属性要更新的值，可能是int ,float,char*,要通过属性名与tableinfo来检索判断具体类型
};
  tmp = tmp->next_;
  pSyntaxNode branch = tmp->child_;//用来遍历更新值节点的语法树指针

  vector<UpdateData> update ;//存储更新的具体数据，属性名和更新后的值
  while(branch){
    UpdateData one;//一条更新数据
    one.column = branch->child_->val_;
    one.value = branch->child_->next_->val_;
    update.push_back(one);
    branch = branch->next_;
  }

  tmp = tmp->next_;//条件指示节点

  //cmpData是我构造的一个类，用于存储比较的数据，即存储比较符，比较数在表中的位置，与一个Field
  //全部是public，可以访问，构造时要显式调用构造函数
  vector<cmpData> cmpOneData;//存储一组条件，即全部都需要满足
  vector<vector<cmpData>> cmpAllData;//存储所有组条件，即只要其中一组符合即可，
  //实际上由于只判断了一个连接符，cmpOneData最多因为and而存储两个，此时cmpAllData只存一个
  //而or时cmpOneData中只存一个就被存入cmpAllData中，cmpAllData中有两个只存了一个元素的vector
  //最终cmpOneData会被清空，只需要使用cmpAlldata中的数据
  tmp =tmp->child_;
  if(tmp->type_ == kNodeConnector){
    string connector = tmp->val_;
    tmp = tmp ->child_;
    if(connector == "and"){
      getOnecmpData(cmpOneData,tmp,tableinfo);//第一个比较数据
      getOnecmpData(cmpOneData,tmp->next_,tableinfo);//第二个比较数据
      cmpAllData.push_back(cmpOneData);//and条件须同时满足，放在一组中
      cmpOneData.clear();
    }else if(connector == "or"){
      getOnecmpData(cmpOneData,tmp,tableinfo);
      cmpAllData.push_back(cmpOneData);
      cmpOneData.clear();
      getOnecmpData(cmpOneData,tmp->next_,tableinfo);
      cmpAllData.push_back(cmpOneData);
      cmpOneData.clear();
    }
  }else if(tmp->type_ == kNodeCompareOperator){
    getOnecmpData(cmpOneData,tmp,tableinfo);
    cmpAllData.push_back(cmpOneData);
    cmpOneData.clear();
  }
  /**
   * 还要写啥？可用的数据与名字？
   * tableinfo  很明显，指向表信息的指针
   * cmpAllData  vector<vector<cmpData>> 存储条件的动态数组
   * update  vector<UpdateData> 即存储你需要更新的属性名和对应值
   * 
   * 遍历所有记录，检索条件并更新
   */
  int affect_cnt = 0;
  auto table_iter = tableinfo->GetTableHeap()->Begin(context->txn_);
  auto table_end = tableinfo->GetTableHeap()->End();
  //开始遍历整张表, 对每条记录查看是否符合条件
  for( ; table_iter != table_end; table_iter++)
  {
    auto record = table_iter->GetFields();
    bool ismatch = false;

    for(uint32_t i = 0; i < cmpAllData.size(); i++)
    {
      for(uint32_t j = 0; j < cmpAllData[i].size(); j++)
      {
        auto rowData = record[cmpAllData[i][j].table_ind];
        string op = cmpAllData[i][j].opChar;

        if(op =="="){
          if(rowData->CompareEquals(cmpAllData[i][j].value));
          else break;
        }else if(op == "<>"){
          if(rowData->CompareNotEquals(cmpAllData[i][j].value));
          else break;
        }else if(op == "<"){
          if(rowData->CompareLessThan(cmpAllData[i][j].value));
          else break;
        }else if(op == "<="){
          if(rowData->CompareLessThanEquals(cmpAllData[i][j].value));
          else break;
        }else if(op == ">"){
          if(rowData->CompareGreaterThan(cmpAllData[i][j].value));  
          else break;
        }else if(op == ">="){
          if(rowData->CompareGreaterThanEquals(cmpAllData[i][j].value));
          else break;
        }

        if(j == cmpAllData[i].size() - 1) ismatch = true;
      }

      if(ismatch == true) break;
    }

    //匹配，开始更新
    if(ismatch)
    {
      RowId oldrid = table_iter->GetRowId();

      //需要根据更新条件构造新的row
      vector<Field> newfields;
      uint32_t col_cnt = tableinfo->GetSchema()->GetColumnCount(); 
      auto cols = tableinfo->GetSchema()->GetColumns();
      for(uint32_t i = 0; i < col_cnt; i++)
      {
        newfields.push_back(*record[i]);
        for(auto elem: update)
        {
          if(elem.column == cols[i]->GetName())
          {
            TypeId type = cols[i]->GetType();
            switch (type)
            {
            case kTypeInt:{
              Field tmp(kTypeInt, atoi(elem.value.c_str()));
              newfields[i] = tmp;
              break;
            }
            case kTypeFloat:{
              Field tmp(kTypeFloat, float(atof(elem.value.c_str())));
              newfields[i] = tmp;
              break;
            }
              break;
            case kTypeChar:{
              Field tmp(kTypeChar, (char*)elem.value.c_str(), elem.value.length()+1, true);//string 长度不包含‘\0’，要加一
              newfields[i] = tmp;
              break;
            }
            case kTypeInvalid:
              break;
            }

            break;
          }
        }
      }
      
      Row newrow(newfields);
      if(tableinfo->GetTableHeap()->UpdateTuple(newrow, oldrid, context->txn_))
      {
        affect_cnt++;
      }
      else cout << "update error" << endl;
    }

  }
  cout << "[INFO] update success, " << affect_cnt << "(rows) affected" << endl;
  return DB_SUCCESS;

}

dberr_t ExecuteEngine::ExecuteTrxBegin(pSyntaxNode ast, ExecuteContext *context) {
#ifdef ENABLE_EXECUTE_DEBUG
  LOG(INFO) << "ExecuteTrxBegin" << std::endl;
#endif
  return DB_FAILED;
}

dberr_t ExecuteEngine::ExecuteTrxCommit(pSyntaxNode ast, ExecuteContext *context) {
#ifdef ENABLE_EXECUTE_DEBUG
  LOG(INFO) << "ExecuteTrxCommit" << std::endl;
#endif
  return DB_FAILED;
}

dberr_t ExecuteEngine::ExecuteTrxRollback(pSyntaxNode ast, ExecuteContext *context) {
#ifdef ENABLE_EXECUTE_DEBUG
  LOG(INFO) << "ExecuteTrxRollback" << std::endl;
#endif
  return DB_FAILED;
}


dberr_t inputFile(char * input,istream& infile)
{
  memset(input, 0, 1024);
  char ch;
  int i=0;
  infile.get(ch);
  while(ch != ';'){
    if(!infile.good()){
      return DB_FAILED;
    }
    input[i++] = ch;
    infile.get(ch);
  }
  input[i]=ch;
  return DB_SUCCESS;
}


dberr_t ExecuteEngine::ExecuteExecfile(pSyntaxNode ast, ExecuteContext *context) {//////////////////////////////////
#ifdef ENABLE_EXECUTE_DEBUG
  LOG(INFO) << "ExecuteExecfile" << std::endl;
#endif
  string filename = ast->child_->val_;
  ifstream  infile(filename);
  // string s;
  char ch[1024];
  while(1){ //读取每一行数据
  if(inputFile(ch, infile)==DB_FAILED){
    return DB_SUCCESS;
  }

  cout<<ch<<endl;
    YY_BUFFER_STATE bp_ = yy_scan_string(ch);
    if (bp_ == nullptr){
      LOG(ERROR) << "Can't create yy_buffer_state." << std::endl;
      exit(1);
    }
    yy_switch_to_buffer(bp_);
    // init parser module
    MinisqlParserInit();
    // parse
    yyparse();
    ExecuteContext context;
    Execute(MinisqlGetParserRootNode(), &context);

//     TreeFileManagers syntax_tree_file_mgr("syntax_tree_");
// SyntaxTreePrinter printer(MinisqlGetParserRootNode());
// printer.PrintTree(syntax_tree_file_mgr[i++]);
    MinisqlParserFinish();
    yy_delete_buffer(bp_);
    yylex_destroy();

    if (context.flag_quit_) {
      printf("bye!\n");
      exit(0);
    }
    if(!infile.good()){
      return DB_SUCCESS;
    }
  }
  return DB_SUCCESS;

  // return DB_FAILED;
}

dberr_t ExecuteEngine::ExecuteQuit(pSyntaxNode ast, ExecuteContext *context) {
#ifdef ENABLE_EXECUTE_DEBUG
  LOG(INFO) << "ExecuteQuit" << std::endl;
#endif
  std::string SQLDBfile = "minisqlSave";
  remove(SQLDBfile.c_str());
  std::ofstream minisqlfile(SQLDBfile);
  for(auto itr : dbs_){
    minisqlfile<<itr.first<<endl;
  }
  minisqlfile.close();
  ASSERT(ast->type_ == kNodeQuit, "Unexpected node type.");
  context->flag_quit_ = true;
  return DB_SUCCESS;
}
