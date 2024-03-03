#include "executor/execute_engine.h"
#include "glog/logging.h"
#include <iomanip>
#include <algorithm>


/**
 * @brief 
 * ����ִ�������棬��minisqlSave�ļ���Ϊ�浵�������ݿ��ļ���
 * �رճ������¿���ʱ��Ҫ��ȡ�ļ���ʼ�����ݿ�����(init Ϊ false)
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
        DBStorageEngine* dbReStore = new DBStorageEngine(i,false);//�����¿������ݿ�����
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
    string newTableName = tmp->val_;  //�½��������
    TableInfo* newTableInfo = nullptr; //�����ձ���Ϣָ��
    //TableMetadata* newTableMetaData = nullptr;    //��Ļ�����Ϣ,���ú����Զ�����
    std::vector<Column *> newColumns;   //�������ԣ��У��Ķ�̬����
    Schema* newSchema;                //���ģʽ�������Լ��ϣ�

    //��ȷ���﷨���ṹ�Ƿ�������ڴ˶�д�жϱ��ں���debug��
    if(tmp->next_) tmp = tmp->next_;
    else cout<<"[ERROR] pSyntaxNode indexDefineList error!!!"<<endl;
    if(tmp->child_) tmp = tmp->child_;
    else cout<<"[ERROR] pSyntaxNode indexColumDefine error!!!"<<endl;
    
    vector<string> AllName;     //��������
    vector<TypeId> AllTypeId;   //����������
    vector<uint32_t> Allsize;   //�����д�С
    vector<uint32_t> Allindex;  //�����еı����
    vector<bool>  Allnull;      //�����е� �Ƿ�ɿ�
    vector<bool>  Alluniq;      //�����е� �Ƿ�uniq
    int countColumn=0;    //��������������Ҫ��������ڱ��е�λ�á�
    vector<string> PKey;   //����
    while(tmp){
      if(tmp->type_==kNodeColumnDefinition){//�������Ա�־�ڵ�
          bool is_unique = false;
          string str;
          if(tmp->val_) str = tmp->val_;
          if(str=="unique") is_unique = true;
          Alluniq.push_back(is_unique);
          Allnull.push_back(false);

          pSyntaxNode branch;     //���ڱ�������ڵ�ķ�֧������Ϣ�ڵ㡣
          branch = tmp->child_;   //�������ƽڵ㣻
          string newColumnName = branch->val_;      //������
          AllName.push_back(newColumnName);

          branch = branch ->next_;
          TypeId newColumnType ;      //�������char,int,float��
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

      } else if(tmp->type_==kNodeColumnList){//����������־�ڵ�
        pSyntaxNode branch=tmp->child_;
        while(branch){
          string str = branch ->val_;
          PKey.push_back(str);
          branch = branch->next_;
        }
        tmp=tmp->next_;
      }
    }

    for(int i=0 ; i < (int)AllName.size() ; i++){//�������
      if(count(PKey.begin() ,PKey.end(), AllName[i])){
        Alluniq[i] = true;
        Allnull[i] = false;
      }
    }

    for(int i=0;i<(int)AllName.size() ; i++){
      //�ж��Ƿ����ַ������ֿ����죻
      Column* newC;
      if(AllTypeId[i]==kTypeChar) newC = new Column(AllName[i],AllTypeId[i],Allsize[i],Allindex[i],Allnull[i],Alluniq[i]);
      else newC = new Column(AllName[i],AllTypeId[i],Allindex[i],Allnull[i],Alluniq[i]);
      
      newColumns.push_back(newC); 
    }
    newSchema = new TableSchema(newColumns);//������ģʽ

    if(dbs_[current_db_]->catalog_mgr_->CreateTable(newTableName,newSchema,context->txn_,newTableInfo)==DB_TABLE_ALREADY_EXIST){
      cout<<"[ERROR] create table failed, table "<<newTableName<<" is already exists!!! "<<endl;
      return DB_FAILED;
    }
    string P = "primary";
    IndexInfo* newIndexInfo=nullptr;
    if(dbs_[current_db_]->catalog_mgr_->CreateIndex(newTableName,P,PKey,context->txn_,newIndexInfo)!=DB_SUCCESS){//������������
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
  string newIndexName = tmp ->val_; //����������
  
  tmp = tmp->next_;
  string table = tmp->val_;   //���������ı�����
  TableInfo* tableinfo = nullptr;
  dbs_[current_db_]->catalog_mgr_->GetTable(table,tableinfo);

  tmp = tmp->next_->child_;
  vector<string> index_keys;
  while(tmp){
    string ColumnName = tmp->val_;
    index_keys.push_back(ColumnName);
    vector<Column*> check = tableinfo->GetSchema()->GetColumns();//��ȡ����
    // int flag = 0;
    for(auto single : check){
      if(single->GetName()==ColumnName && (!single->IsUnique())){//��unique����
        cout<<"[ERROR] Create index failed, index must be unique!!! "<<endl;
        return DB_FAILED;
      }
    }

    tmp = tmp->next_;
  }
  IndexInfo* index_info = nullptr;
  if(dbs_[current_db_]->catalog_mgr_->CreateIndex(table,newIndexName,index_keys,context->txn_,index_info) != DB_SUCCESS){
    cout<<"[ERROR] create index failed"<<endl;//�ظ����޴˱��ᵼ��ʧ�ܣ���Ҫ�ɵ�����Ϣ
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
    string opChar;      //�ȽϷ�
    uint32_t table_ind;//�����ڱ��е�����
    Field  value;      //ֵ
    explicit cmpData(string op, uint32_t ind, TypeId type, int32_t i):opChar(op), table_ind(ind), value(type,i) {}
    explicit cmpData(string op, uint32_t ind, TypeId type, float f):opChar(op), table_ind(ind), value(type,f) {}
    explicit cmpData(string op, uint32_t ind, TypeId type, char *data, uint32_t len, bool manage_data):opChar(op), table_ind(ind), value(type, data, len, manage_data) {}
};//���ڹ���Ƚϵ�ֵ


dberr_t getOnecmpData(vector<cmpData>& v,pSyntaxNode ast,TableInfo* tableinfo){
  pSyntaxNode tmp = ast;
  string op_val = tmp ->val_;//�Ƚϲ�����
  tmp = tmp->child_;
  string columnName = tmp->val_;//������
  tmp = tmp->next_;
  string cmpValue = tmp ->val_;//�Ƚϵ�ֵ

  //�ҵ�����λ��
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
  string tablename = tmp->next_->val_;//����,�˴���������ʾ���ԵĽڵ㣬�ں�����
  TableInfo* tableinfo = nullptr;  
  dbs_[current_db_]->catalog_mgr_->GetTable(tablename,tableinfo);//��ȡ����Ϣ


  vector<uint32_t> SelectInd;
  if(tmp->type_==kNodeAllColumns){//ѡ�����е���
    for(uint32_t i=0; i < tableinfo->GetSchema()->GetColumnCount();i++){
      SelectInd.push_back(i);
    }
  }
  else if(tmp->type_ == kNodeColumnList){//ѡ�񲿷��С�
    pSyntaxNode branch = tmp->child_;
    while(branch){
      uint32_t ind;
      string name = branch ->val_;//������
      if(tableinfo->GetSchema()->GetColumnIndex(name,ind)){
        cout<<"[ERROR] name wrong!!!"<<endl;
        return DB_FAILED;
      }
      SelectInd.push_back(ind);
      branch = branch ->next_;  //ǰ����һ�ڵ�
    }
  } else {
    cout<<"[ERROR] select error!!!"<<endl;
    return DB_FAILED;
  }

//���¶��﷨�����б�������ʼ���Ƚ�ֵ
  tmp = tmp->next_->next_;
  if(!tmp){
    for(auto showColumn: SelectInd){//��ʾ��Ҫ��������
    cout <<"-- "<<setw(10)<<tableinfo->GetSchema()->GetColumn(showColumn)->GetName()<<" ";
    }
    cout<<endl;
    int RowCount=0;//�����������صļ�¼��
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
  tmp = tmp->child_;//��һ�������ڵ㣬�ж��Ƿ������ӷ���ֻ�ܲ�һ�����ӷ�
  if(tmp->type_ == kNodeConnector){
    string connector = tmp->val_;//���ӷ�
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
    
    for(auto showColumn: SelectInd){//��ʾ��Ҫ��������
    cout <<"-- "<<setw(10)<<tableinfo->GetSchema()->GetColumn(showColumn)->GetName()<<" ";
    }
    cout<<endl;
    uint32_t RowCount=0;
    //��ʼ�������ű���ÿ����¼�鿴�Ƿ��������
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

    //�Ƿ���Ҫ�����ļ��
    if(v[0].opChar=="="){
      vector<IndexInfo*> indexinfos;
      dbs_[current_db_]->catalog_mgr_->GetTableIndexes(tablename,indexinfos);
      for(auto i : indexinfos){
        if(i->GetIndexKeySchema()->GetColumn(0)->GetTableInd()==v[0].table_ind){//����λ�ö�����
          vector<Field> singleColumn;
          singleColumn.push_back(v[0].value);
          Row check(singleColumn);
          vector<RowId> res;
          if(i->GetIndex()->ScanKey(check,res,context->txn_)!=DB_SUCCESS){//û����ؼ�¼
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
            for(auto showColumn: SelectInd){//�����ʾ
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

  //����Ч������������Ȳ���
    auto itr = tableinfo->GetTableHeap()->Begin(context->txn_);
    for(auto showColumn: SelectInd){//��ʾ����
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
  string table_in = tmp->val_;  //�õ�����t
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
        fields.push_back(Field(kTypeInt,data));//��������װ��
      }else if(types[dataCount]==kTypeFloat){
        float data = atof(tmp->val_);
        fields.push_back(Field(kTypeFloat,data));//��������
      }
    }else if(tmp->type_ == kNodeString){
      string str = tmp->val_;
      fields.push_back(Field(kTypeChar,tmp->val_,str.size()+1,true));//�ַ���
    }
    dataCount++;
    tmp = tmp->next_;//��һ�����ݻ�β��
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


  Row newRow(fields); //�ֲ��������ɣ����㼰ʱ���������ڴ棻

  if(tableinfo->GetTableHeap()->InsertTuple(newRow,context->txn_)){
  }//���ص�row�Ѿ�����rowid;


  Row* aaa = new Row(newRow.GetRowId());
  tableinfo->GetTableHeap()->GetTuple(aaa, nullptr);

  for(auto index : indexes){//ά��������������ֵ��ע�����������row��Ҫ���¹���
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
  string tablename = tmp->val_;//��ȡ�������
  TableInfo* tableinfo=nullptr;
  dbs_[current_db_]->catalog_mgr_->GetTable(tablename,tableinfo);//��ȡ����Ϣ

  tmp = tmp->next_;//������ʶ�ڵ㣬����
  tmp = tmp->child_;//ת�Ƶ���һ�����ӷ��������

  //cmpData���ҹ����һ���࣬���ڴ洢�Ƚϵ����ݣ����洢�ȽϷ����Ƚ����ڱ��е�λ�ã���һ��Field
  //ȫ����public�����Է��ʣ�����ʱҪ��ʽ���ù��캯��
  vector<cmpData> cmpOneData;//�洢һ����������ȫ������Ҫ����
  vector<vector<cmpData>> cmpAllData;//�洢��������������ֻҪ����һ����ϼ��ɣ�
  //ʵ��������ֻ�ж���һ�����ӷ���cmpOneData�����Ϊand���洢��������ʱcmpAllDataֻ��һ��
  //��orʱcmpOneData��ֻ��һ���ͱ�����cmpAllData�У�cmpAllData��������ֻ����һ��Ԫ�ص�vector
  //����cmpOneData�ᱻ��գ�ֻ��Ҫʹ��cmpAlldata�е�����

  if(tmp->type_ == kNodeConnector){
    string connector = tmp->val_;
    tmp = tmp ->child_;
    if(connector == "and"){
      getOnecmpData(cmpOneData,tmp,tableinfo);//��һ���Ƚ�����
      getOnecmpData(cmpOneData,tmp->next_,tableinfo);//�ڶ����Ƚ�����
      cmpAllData.push_back(cmpOneData);//and������ͬʱ���㣬����һ����
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
 * ͨ��cmpAllData���������е��ж���������������Ҫ������������ȥ��ȡ��¼
 * ����ʹ�����������������Ƚ���ʵ�֣����Ҳ�����Ҳû��ɾ�������µ�����ʹ�ñȽ�Ҫ��
 * cmpAlldata ���
 *    1. ��������һ����vector<cmpData>��vector
 *        2. cmpData ���� 
 *        string opchar(��������ʹ�õıȽϷ�����= ,<>,<,>��)
 *        uint32_t table_ind (�����ݶ�Ӧ�ı����������Ҫ�͵ڼ��бȽ�)
 *        Field value(��һ��Field�������ڼ�¼��ֵ)
 * Field���бȽϵĺ�������CompareNotEquals(����) �պö�Ӧ���ֱȽϷ�
 * 
 * ���������Ǳ������ű�Ȼ�����ÿ����¼���Ƚ��������������������Ľ���ɾ��
 * ����Ϣ�Ѵ��� tableinfo ����
 * Ҫ����������Ϣ��dbs_[current_db_] ����ǰʹ�����ݿ⣬����ָ�����������������
 */
  auto table_iter = tableinfo->GetTableHeap()->Begin(context->txn_);
  auto table_end = tableinfo->GetTableHeap()->End();
  int affect_cnt = 0;
  //��ʼ�������ű�, ��ÿ����¼�鿴�Ƿ��������
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
      if(tableinfo->GetTableHeap()->MarkDelete(rid, context->txn_))  //��ȷ�����߼�ɾ������ֱ��ɾ��
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
 * ������Ҫ���µ�ֵ������
 * ��Ϊ�¹����Field���������⣬�һ��ٹ���һ����(UpdateData)���ṩ�������Ե����ֺ�ֵ��
 * ��Ȼ���µ����Կ��ܶ����ʵ���ṩ������������  vector<UpdateData> update
 * tableinfo Ҳ�ṩ�˱���Ϣ�����Թ���Field����ֱ�����Ҹ���������Ϣ���и���
 * cmpOneData ��cmpAllData ��ɾ����������һ���ģ����ڴ洢����
 * ͨ��������������¼���Դ˱Ƚ���������
 * 
 */

    pSyntaxNode tmp = ast->child_;
    string tablename = tmp->val_;//��ȡ�������
    TableInfo* tableinfo=nullptr;
    dbs_[current_db_]->catalog_mgr_->GetTable(tablename,tableinfo);//��ȡ����Ϣ

class UpdateData{
public:
  string column;
  string value;//����Ҫ���µ�ֵ��������int ,float,char*,Ҫͨ����������tableinfo�������жϾ�������
};
  tmp = tmp->next_;
  pSyntaxNode branch = tmp->child_;//������������ֵ�ڵ���﷨��ָ��

  vector<UpdateData> update ;//�洢���µľ������ݣ��������͸��º��ֵ
  while(branch){
    UpdateData one;//һ����������
    one.column = branch->child_->val_;
    one.value = branch->child_->next_->val_;
    update.push_back(one);
    branch = branch->next_;
  }

  tmp = tmp->next_;//����ָʾ�ڵ�

  //cmpData���ҹ����һ���࣬���ڴ洢�Ƚϵ����ݣ����洢�ȽϷ����Ƚ����ڱ��е�λ�ã���һ��Field
  //ȫ����public�����Է��ʣ�����ʱҪ��ʽ���ù��캯��
  vector<cmpData> cmpOneData;//�洢һ����������ȫ������Ҫ����
  vector<vector<cmpData>> cmpAllData;//�洢��������������ֻҪ����һ����ϼ��ɣ�
  //ʵ��������ֻ�ж���һ�����ӷ���cmpOneData�����Ϊand���洢��������ʱcmpAllDataֻ��һ��
  //��orʱcmpOneData��ֻ��һ���ͱ�����cmpAllData�У�cmpAllData��������ֻ����һ��Ԫ�ص�vector
  //����cmpOneData�ᱻ��գ�ֻ��Ҫʹ��cmpAlldata�е�����
  tmp =tmp->child_;
  if(tmp->type_ == kNodeConnector){
    string connector = tmp->val_;
    tmp = tmp ->child_;
    if(connector == "and"){
      getOnecmpData(cmpOneData,tmp,tableinfo);//��һ���Ƚ�����
      getOnecmpData(cmpOneData,tmp->next_,tableinfo);//�ڶ����Ƚ�����
      cmpAllData.push_back(cmpOneData);//and������ͬʱ���㣬����һ����
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
   * ��Ҫдɶ�����õ����������֣�
   * tableinfo  �����ԣ�ָ�����Ϣ��ָ��
   * cmpAllData  vector<vector<cmpData>> �洢�����Ķ�̬����
   * update  vector<UpdateData> ���洢����Ҫ���µ��������Ͷ�Ӧֵ
   * 
   * �������м�¼����������������
   */
  int affect_cnt = 0;
  auto table_iter = tableinfo->GetTableHeap()->Begin(context->txn_);
  auto table_end = tableinfo->GetTableHeap()->End();
  //��ʼ�������ű�, ��ÿ����¼�鿴�Ƿ��������
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

    //ƥ�䣬��ʼ����
    if(ismatch)
    {
      RowId oldrid = table_iter->GetRowId();

      //��Ҫ���ݸ������������µ�row
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
              Field tmp(kTypeChar, (char*)elem.value.c_str(), elem.value.length()+1, true);//string ���Ȳ�������\0����Ҫ��һ
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
  while(1){ //��ȡÿһ������
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
