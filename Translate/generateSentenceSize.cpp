#include <iostream>
#include <fstream>
#include <string>
#include <sstream>
#include <unistd.h>
#include <algorithm>
#include <utility>

using namespace std;

int main()
{
	ifstream infile("first2000english.txt");
	ofstream opfile;
	opfile.open("sentenceSizeEnglish.txt");

	int index = 0;
	string line;
	int max=0;
	while(getline(infile,line))
	{
		istringstream iss(line);
		string word;
		while(iss >> word)
		{
			index++;
			if(index>max)
				max = index;
		}
		opfile << index << endl;
		index = 0;
	}
	printf("Max is %d", max);	

	return 0;
}
