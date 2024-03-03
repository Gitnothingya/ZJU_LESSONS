#include "skiplist.cpp"
#include "list.cpp"
using namespace std;

int main()
{
	SingleList<string> listT;
	listT.insertNode(1,"a");
	listT.insertNode(2,"b");
	listT.insertNode(3,"c");
	listT.insertNode(4,"d");
	listT.insertNode(5,"e");
	listT.insertNode(6,"f");
	listT.insertNode(7,"g");
	listT.insertNode(8,"h");
	listT.insertNode(9,"i");
	listT.insertNode(10,"j");

listT.insertNode(21,"j");
listT.insertNode(22,"j");
listT.insertNode(23,"j");
listT.insertNode(24,"j");
listT.insertNode(25,"j");
listT.insertNode(26,"j");
listT.insertNode(27,"j");
listT.insertNode(28,"j");
listT.insertNode(29,"j");
listT.insertNode(30,"j");
listT.insertNode(31,"j");

listT.insertNode(11,"j");
listT.insertNode(12,"j");
listT.insertNode(13,"j");
listT.insertNode(14,"j");
listT.insertNode(15,"j");
listT.insertNode(16,"j");
listT.insertNode(17,"j");
listT.insertNode(18,"j");
listT.insertNode(19,"j");
listT.insertNode(20,"j");

	//cout<<listT.getIndexNum()

	
	// vector<int> v=listT.getIndexNum();
	// for(int i=0;i<v.size();i++){
		// cout<<v[i]<<" ";
	// }
	// cout<<endl;






	for(int i=28;i>0;i-=2){
		cout<<i<<" ";
		cout<<listT.findNode(i)->value<<endl;
	}

	if(listT.deleteNode(2)) cout<<"true"<<endl;
	if(listT.deleteNode(4)) cout<<"true"<<endl;
	if(listT.deleteNode(5)) cout<<"true"<<endl;
	if(listT.deleteNode(7)) cout<<"true"<<endl;


	if(!listT.deleteNode(0)) cout<<"false"<<endl;
	if(!listT.deleteNode(7)) cout<<"false"<<endl;

	return 0;
}
