#include <iostream>
#include <fstream>
using namespace std;

int main()
{	ofstream myfile("data.txt");
	if(myfile.is_open()){
    for (int i = 20631; i< 21200; i+=32){
		myfile<< "@" << i << "\n";
		myfile<< "M=-1\n";

		
	}
	myfile.close();
	}
    return 0;
}
