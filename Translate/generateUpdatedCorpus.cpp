#include <iostream>
#include <fstream>
#include <string>
#include <sstream>
#include <unistd.h>
#include <algorithm>
#include <unordered_map>
#include <utility>

using namespace std;

bool IsSomethingBad(char c)
{
    switch(c)
    {
    case '.':
    case ',':
    case '(':
    case ')':
    case '?':
        return true;
    default:
        return false;
    }
}

int main()
{
	ifstream infile("first2000english.txt");
	ofstream opfile;
	opfile.open("updatedCorpus2000English.txt");
	ofstream opfile2;
	opfile2.open("mapFrench.txt");
	unordered_map<string,int> myMap;

	int index = 1;

	string line;

	while(getline(infile,line))
	{
		istringstream iss(line);
		string word;
		while(iss >> word)
		{
			word.erase(remove_if(word.begin(), word.end(), &IsSomethingBad), word.end());
			transform(word.begin(), word.end(), word.begin(), ::tolower);

			unordered_map<string,int>::const_iterator itr = myMap.find(word);

			if(itr==myMap.end())
			{
				myMap.insert(make_pair(word,index));
				opfile2 << index << " " << word << endl;
				opfile << index << " ";
				index++;
			}
			else
			{
				int second = itr->second;
				opfile << second << " ";
			}
		}
		opfile << "." << endl;
	    	/*line.erase(remove_if(line.begin(), line.end(), &IsSomethingBad), line.end());
		transform(line.begin(), line.end(), line.begin(), ::tolower);

		unordered_map<string,int>::const_iterator itr = myMap.find(line);

		if(itr==myMap.end())
		{
			cout << "inside" << endl;
			myMap.insert(make_pair(line,index));
			opfile << index << " " << line << endl;
			index++;
		}
		//opfile << line << endl;*/
		//cout << " harsh " << endl;
	}

	return 0;
}
