#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include<time.h>
#include "include\source.h"

const char* datafile[]={
"data/USA-road-d.NY.txt",    //264346 733846
"data/USA-road-d.COL.txt",   //435666 1057066
"data/USA-road-d.FLA.txt",   //1070376 2712798
"data/USA-road-d.NE.txt",    //1524453 3897636
"data/test.txt"
};
const char* queryfile[]={
"query/query0.txt","query/query1.txt","query/query2.txt","query/query3.txt","query/query4.txt",
"query/query5.txt","query/query6.txt","query/query7.txt","query/query8.txt","query/query9.txt",
"query/query10.txt","query/query11.txt","query/query12.txt","query/query13.txt","query/query14.txt",
"query/query15.txt","query/query16.txt","query/query17.txt","query/query18.txt","query/query19.txt",
"query/query20.txt","query/query21.txt","query/query22.txt","query/query23.txt","query/query24.txt",
};
const char* outfile[]={
"result/out0.txt","result/out1.txt","result/out2.txt","result/out3.txt","result/out4.txt",
"result/out5.txt","result/out6.txt","result/out7.txt","result/out8.txt","result/out9.txt"
};


int main()
{
	printf("choose a file to test:(no other input please)\n");
	printf("0-USA-road-d.NY.txt\n");
	printf("1-USA-road-d.COL.txt\n");
	printf("2-USA-road-d.FLA.txt\n");
	printf("3-USA-road-d.NE.txt\n");
	printf("4-Just test\n");
	printf("choose:");
	int fname;
	scanf("%d",&fname);
	FILE *fp=fopen(datafile[fname],"r");
    Graph G = ReadGraph(fp);
	FILE * qfp,*ofp;

    int *Dist=(int*)malloc(sizeof(int)*MaxVertex) ,
     *Known=(int*)malloc(sizeof(int)*MaxVertex);
	int i , n_query , ver1[1000] , ver2[1000] , res;
	clock_t start,finish;
	double Btime=0,Ftime=0;

	if(fname==4){
		qfp=fopen("query/qtest.txt","r");
		fscanf(qfp,"%d",&n_query);
		int j;
		for(j=0;j<n_query;j++){
			fscanf(qfp,"%d",&ver1[j]);
			fscanf(qfp,"%d",&ver2[j]);
		}
		ofp=fopen("result/Bitest.txt","w+");
		for(j=0;j<n_query;j++){
			res = BiDijkstra(G , ver1[j], ver2[j], Dist, Known);
			fprintf(ofp,"%d\n",res);
		}
		fclose(ofp);

		ofp=fopen("result/Fibtest.txt","w+");
		for(j=0;j<n_query;j++){
			res = FibDijkstra(G , ver1[j], ver2[j], Dist, Known);
			fprintf(ofp,"%d\n",res);//printf("%d ",j);
		}
		fclose(ofp);
		fclose(qfp);
		return 0;
	}

	for(i=0;i<5;i++){
		int offset = fname*5;
		qfp=fopen(queryfile[offset+i],"r");
		
		fscanf(qfp,"%d",&n_query);
		int j;
		for(j=0;j<n_query;j++){
			fscanf(qfp,"%d",&ver1[j]);
			fscanf(qfp,"%d",&ver2[j]);
		}

		ofp=fopen(outfile[i],"w+");
		start = clock();
		for(j=0;j<n_query;j++){
			res = BiDijkstra(G , ver1[j], ver2[j], Dist, Known);
			fprintf(ofp,"%d\n",res);//printf("%d ",j);
		}
		finish = clock();
		fclose(ofp);
		Btime = (double)(finish-start)/CLOCKS_PER_SEC;
		printf("yes\n");//the "yes" is reserved to show the program are running 

		ofp=fopen(outfile[i+5],"w+");
		start = clock();
		for(j=0;j<n_query;j++){
			res = FibDijkstra(G , ver1[j], ver2[j], Dist, Known);
			fprintf(ofp,"%d\n",res);//printf("%d ",j);
		}
		finish = clock();
		fclose(ofp);
		Ftime = (double)(finish-start)/CLOCKS_PER_SEC;
		printf("yes\n");//the "yes" is reserved to show the program are running 
		
		printf("time:%.4lfs %.4lfs\n",Btime,Ftime);
		fclose(qfp);
	}
	return 0;
}