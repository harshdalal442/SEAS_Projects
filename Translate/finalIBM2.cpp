#include <iostream>
#include <fstream>
#include <string>
#include <sstream>
#include <unistd.h>
#include <algorithm>
#include <utility>
#include <stdio.h>
#include <string.h>

using namespace std;

int E=93,F=98,L=40,M=38, N=8;
//E - Total number of unique English words in the corpus
//F - Total number of unique French words in the corpus
//L - Maximum length of any English sentence
//M - Maximum length of any French sentence

string ReadNthLine(const string& filename, int N)
{
   ifstream in(filename.c_str());

   string s;

   for(int i = 0; i < N; ++i)
       getline(in, s);

   getline(in,s);
   return s;
}

int getSizeOfEnglishForKthSentence(int k)
{
	string fileName = "sentenceSizeEnglish.txt";
	string s = ReadNthLine(fileName,k);
	int num = atoi(s.c_str());
	return num;
}

int getSizeOfFrenchForKthSentence(int k)
{
	string fileName = "sentenceSizeFrench.txt";
	string s = ReadNthLine(fileName,k);
	int num = atoi(s.c_str());
	//int num = stoi(s);
	return num;
}

string getKthEnglishStringFromUpdatedCorpus(int k)
{
	string fileName = "updatedCorpus2000English.txt";
	string s = ReadNthLine(fileName,k);
	return s;
}

string getKthFrenchStringFromUpdatedCorpus(int k)
{
	string fileName = "updatedCorpus2000French.txt";
	string s = ReadNthLine(fileName,k);
	return s;
}

int getKthWordFromAString(int k,string s)
{
	string word;
	istringstream iss(s);
	for(int i=0;i<k;i++)
		iss >> word;

	iss >> word;
	int num = atoi(word.c_str());
	//int num = stoi(word);
	return num;
}

void createCounterFiles()
{
    //Creating Counter files
    for(int i=0;i<N;i++)
    {
        int l = getSizeOfEnglishForKthSentence(i);
        int m = getSizeOfFrenchForKthSentence(i);

        //Creating cjilm
        char fileName[100] = "./param/c/cjilm/";
        char lS[4];
        sprintf(lS, "%d", l);
        char mS[4];
        sprintf(mS, "%d", m);
        strcat(fileName, lS);
        strcat(fileName, "_");
        strcat(fileName, mS);
        strcat(fileName, ".txt");
        FILE *fc;
        fc = fopen(fileName, "w");

        //Building a space
        char space1[10*M] = " ";
        char space2[2] = " ";
        for(int k=0;k<10*m-3;k++)
            strcat(space1, space2);
        for(int k=0;k<=l;k++)
        {
            fprintf(fc, space1);
            fprintf(fc, "\n");
        }

        for(int k=0;k<=l;k++)
        {
            for(int i=0;i<m;i++)
            {
                fseek(fc, 10*i + k*m*10, SEEK_SET);
                fprintf(fc,"0");
            }
        }
        fclose(fc);

        //Creating cilm
        char fileName2[100] = "./param/c/cilm/";
        strcat(fileName2, lS);
        strcat(fileName2, "_");
        strcat(fileName2, mS);
        strcat(fileName2, ".txt");
        fc = fopen(fileName2, "w");

        //Space logic
        char space1C[10] = " ";
        for(int k=0;k<10-3;k++)
            strcat(space1C, space2);
        for(int k=0;k<m;k++)
        {
            fprintf(fc, space1C);
            fprintf(fc, "\n");
        }
        for(int k=0;k<m;k++)
        {
            fseek(fc, 10*k, SEEK_SET);
            fprintf(fc,"0");
        }
        fclose(fc);
    }

    //Creating cef
    FILE *fp;
    fp = fopen("./param/c/cef.txt", "w");
    //Space logic
    char space1[10*F] = " ";
	char space2[2] = " ";
	for(int i=0;i<10*F-3;i++)
		strcat(space1, space2);
	for(int i=0;i<=E;i++)
	{
		fprintf(fp, space1);
		fprintf(fp, "\n");
	}

    for(int i=0;i<=E;i++)
    {
        for(int j=0;j<F;j++)
        {
            fseek(fp, 10*j + i*F*10, SEEK_SET);
            fprintf(fp,"0");
        }
    }
    fclose(fp);

    //Creating ce
    fp = fopen("./param/c/ce.txt", "w");
    //Space logic
    char space1C[10] = " ";
	for(int i=0;i<10-3;i++)
		strcat(space1C, space2);
	for(int i=0;i<=E;i++)
	{
		fprintf(fp, space1C);
		fprintf(fp, "\n");
	}
    for(int i=0;i<=E;i++)
    {
        fseek(fp, i*10, SEEK_SET);
        fprintf(fp,"0");
    }
    fclose(fp);
}

void createT()
{
    //Creating T file
    printf("Creating a T File...\n");
    FILE *fp;
    fp = fopen("./param/t.txt", "w");
    char space1[10*F] = " ";
	char space2[2] = " ";
	for(int i=0;i<10*F-3;i++)
		strcat(space1, space2);
	for(int i=0;i<=E;i++)
	{
		fprintf(fp, space1);
		fprintf(fp, "\n");
	}

    for(int i=0;i<=E;i++)
    {
        //printf("Writing %d...\n", i);
        for(int j=0;j<F;j++)
        {
            fseek(fp, 10*j + i*F*10, SEEK_SET);
            fprintf(fp,"0.2");
        }
    }
    fclose(fp);
}

void createQ()
{
    printf("Creating a q file...\n");
    for(int i=0;i<N;i++)
    {
        int l = getSizeOfEnglishForKthSentence(i);
        int m = getSizeOfFrenchForKthSentence(i);
        char fileName[100] = "./param/q/";
        char lS[4];
        sprintf(lS, "%d", l);
        char mS[4];
        sprintf(mS, "%d", m);
        strcat(fileName, lS);
        strcat(fileName, "_");
        strcat(fileName, mS);
        strcat(fileName, ".txt");
        FILE *fq;
        fq = fopen(fileName, "w");

        //Building a space
        char space1[10*M] = " ";
        char space2[2] = " ";
        for(int k=0;k<10*m-3;k++)
            strcat(space1, space2);
        for(int k=0;k<=l;k++)
        {
            fprintf(fq, space1);
            fprintf(fq, "\n");
        }

        for(int k=0;k<=l;k++)
        {
            for(int j=0;j<m;j++)
            {
                fseek(fq, 10*j + k*m*10, SEEK_SET);
                fprintf(fq,"0.2");
            }
        }
        fclose(fq);
    }
}

float getT(int e, int f)
{
    char readVal[10];
    FILE *fp;
	fp = fopen("./param/t.txt","r+");
    fseek(fp, 10*(f-1) + e*F*10, SEEK_SET);
	fscanf(fp, "%s", readVal);
    fclose(fp);
    return atof(readVal);
}

void setT(int e, int f, float val)
{
    char writeVal[10];
    sprintf(writeVal, "%0.4f", val);
    FILE *fp;
	fp = fopen("./param/t.txt","r+");
    fseek(fp, 10*(f-1) + e*F*10, SEEK_SET);
	fprintf(fp, "%s", writeVal);
    fclose(fp);
}

float getQ(int j, int i, int l, int m)
{
    char fileName[100] = "./param/q/";
    char lS[4];
    char mS[4];
    sprintf(lS, "%d", l);
    sprintf(mS, "%d", m);
    strcat(fileName, lS);
    strcat(fileName, "_");
    strcat(fileName, mS);
    strcat(fileName, ".txt");
    FILE *fq;
    fq = fopen(fileName, "r+");

    char readVal[10];
    fseek(fq, 10*(i-1) + j*m*10, SEEK_SET);
	fscanf(fq, "%s", readVal);
    fclose(fq);
    return atof(readVal);
}

void setQ(int j, int i, int l, int m, float val)
{
    char fileName[100] = "./param/q/";
    char lS[4];
    char mS[4];
    sprintf(lS, "%d", l);
    sprintf(mS, "%d", m);
    strcat(fileName, lS);
    strcat(fileName, "_");
    strcat(fileName, mS);
    strcat(fileName, ".txt");
    FILE *fq;
    fq = fopen(fileName, "r+");

    char writeVal[10];
    sprintf(writeVal, "%0.4f", val);
    fseek(fq, 10*(i-1) + j*m*10, SEEK_SET);
	fprintf(fq, "%s", writeVal);
    fclose(fq);
}

float getCJILM(int j, int i, int l, int m)
{
    char fileName[100] = "./param/c/cjilm/";
    char lS[4];
    char mS[4];
    sprintf(lS, "%d", l);
    sprintf(mS, "%d", m);
    strcat(fileName, lS);
    strcat(fileName, "_");
    strcat(fileName, mS);
    strcat(fileName, ".txt");
    FILE *fq;
    fq = fopen(fileName, "r+");

    char readVal[10];
    fseek(fq, 10*(i-1) + j*m*10, SEEK_SET);
	fscanf(fq, "%s", readVal);
    fclose(fq);
    return atof(readVal);
}

void setCJILM(int j, int i, int l, int m, float val)
{
    char fileName[100] = "./param/c/cjilm/";
    char lS[4];
    char mS[4];
    sprintf(lS, "%d", l);
    sprintf(mS, "%d", m);
    strcat(fileName, lS);
    strcat(fileName, "_");
    strcat(fileName, mS);
    strcat(fileName, ".txt");
    FILE *fq;
    fq = fopen(fileName, "r+");

    char writeVal[10];
    sprintf(writeVal, "%0.4f", val);
    fseek(fq, 10*(i-1) + j*m*10, SEEK_SET);
	fprintf(fq, "%s", writeVal);
    fclose(fq);
}

float getCILM(int i, int l, int m)
{
    char fileName[100] = "./param/c/cilm/";
    char lS[4];
    char mS[4];
    sprintf(lS, "%d", l);
    sprintf(mS, "%d", m);
    strcat(fileName, lS);
    strcat(fileName, "_");
    strcat(fileName, mS);
    strcat(fileName, ".txt");
    FILE *fq;
    fq = fopen(fileName, "r+");

    char readVal[10];
    fseek(fq, 10*(i-1), SEEK_SET);
	fscanf(fq, "%s", readVal);
    fclose(fq);
    return atof(readVal);
}

void setCILM(int i, int l, int m, float val)
{
    char fileName[100] = "./param/c/cilm/";
    char lS[4];
    char mS[4];
    sprintf(lS, "%d", l);
    sprintf(mS, "%d", m);
    strcat(fileName, lS);
    strcat(fileName, "_");
    strcat(fileName, mS);
    strcat(fileName, ".txt");
    FILE *fq;
    fq = fopen(fileName, "r+");

    char writeVal[10];
    sprintf(writeVal, "%0.4f", val);
    fseek(fq, 10*(i-1), SEEK_SET);
	fprintf(fq, "%s", writeVal);
    fclose(fq);
}

float getCEF(int e, int f)
{
    char readVal[10];
    FILE *fp;
	fp = fopen("./param/c/cef.txt","r+");
    fseek(fp, 10*(f-1) + e*F*10, SEEK_SET);
	fscanf(fp, "%s", readVal);
    fclose(fp);
    return atof(readVal);
}

void setCEF(int e, int f, float val)
{
    char writeVal[10];
    sprintf(writeVal, "%0.4f", val);
    FILE *fp;
	fp = fopen("./param/c/cef.txt","r+");
    fseek(fp, 10*(f-1) + e*F*10, SEEK_SET);
	fprintf(fp, "%s", writeVal);
    fclose(fp);
}

float getCE(int e)
{
    char readVal[10];
    FILE *fp;
	fp = fopen("./param/c/ce.txt","r+");
    fseek(fp, e*10, SEEK_SET);
	fscanf(fp, "%s", readVal);
    fclose(fp);
    return atof(readVal);
}

void setCE(int e, float val)
{
    char writeVal[10];
    sprintf(writeVal, "%0.4f", val);
    FILE *fp;
	fp = fopen("./param/c/ce.txt","r+");
    fseek(fp, e*10, SEEK_SET);
	fprintf(fp, "%s", writeVal);
    fclose(fp);
}

int main()
{
    createT();
    createQ();
    printf("Parameters files created...");

    int iter=2;     //Total number of iterations

    while(iter--)
    {
        printf("Iteration %d...\n", iter);
        //Creating c file and initializing to 0
        printf("Resetting all counters to 0...\n");
        createCounterFiles();
        printf("All counters are reset to 0...\n");
        //printf("Counter Files created!\n");
        for(int k=0;k<N;k++)
        {
            printf("Processing sentence k=%d...\n", k);
            int m=getSizeOfFrenchForKthSentence(k);  //This specifies the length of kth French sentence
            int l=getSizeOfEnglishForKthSentence(k);  //This specifies the length of kth English sentence

            string englishSentence = getKthEnglishStringFromUpdatedCorpus(k);
            string frenchSentence = getKthFrenchStringFromUpdatedCorpus(k);

            for(int i=1;i<=m;i++)      //Iterating through all French words of kth sentence
            {
                //printf("For French word i=%d\n", i-1);
                int ithWord=getKthWordFromAString(i-1,frenchSentence);
                for(int j=0;j<=l;j++)       //Iterating through all English words of kth sentence
                {
                    int jthWord = 0;
                    if(j!=0)
                    {
                        //printf("For English word j=%d\n", j-1);
                        jthWord=getKthWordFromAString(j-1,englishSentence);
                    }

                    //Calculation of delta started...
                    //Calculating denominator part in delta
                    float sum=0;
                    int tempJthWord=0;
                    for(int temp=0;temp<=l;temp++)  //For loop to calculate denominator of delta
                    {
                        tempJthWord = 0;
                        if(temp!=0)
                        {
                            //printf("For English word j=%d\n", temp-1);
                            tempJthWord=getKthWordFromAString(temp-1,englishSentence);
                        }
                        //printf("Values jilm= %d %d %d %d\n", j, i, l, m);
                        //printf("Values tempJthWord ithWord= %d %d\n", tempJthWord, ithWord);
                        sum += getQ(temp,i,l,m)*getT(tempJthWord,ithWord);
                        //printf("getQ=%f     getT=%f\n", getQ(temp,i,l,m), getT(tempJthWord,ithWord));
                    }
                    //printf("Sum is %f\n", sum);
                    //printf("Numerator is %f\n", (getQ(j,i,l,m)*getT(jthWord,ithWord)));
                    //Denominator for delta is computed and now computing delta
                    float delta = (getQ(j,i,l,m)*getT(jthWord,ithWord))/sum;
                    //printf("Delta=%f\n", delta);
                    //Calcuation of delta ends...

                    //Updating c values
                    printf("Updating Counter values...\n");
                    setCEF(jthWord,ithWord, getCEF(jthWord, ithWord)+ delta);
                    setCE(jthWord, getCE(jthWord)+delta);
                    setCJILM(j,i,l,m, getCJILM(j,i,l,m)+delta);
                    setCILM(i,l,m,getCILM(i,l,m)+delta);
                    printf("Updated the counter values...\n");
                    /*printf("Setting of counter done!\n");
                    printf("Updated values are...\n");
                    printf("CEF=%f\n",getCEF(jthWord,ithWord));
                    printf("CE=%f\n",getCE(jthWord));
                    printf("CJILM=%f\n",getCJILM(j,i,l,m));
                    printf("CILM=%f\n",getCILM(i,l,m));*/
                }
            }
        }
        //All sentences are completed// Updating t and q parameters
        printf("All sentences processed...\n");
        printf("Setting t parameters...\n");
        for(int e=0;e<=E;e++)
        {
            for(int f=1;f<=F;f++)
            {
                setT(e, f, getCEF(e, f)/getCE(e));
            }
        }
        printf("All t parameters are set...\n");

        //Updating q parameter
        printf("Setting q parameters...\n");
        for(int n=0;n<N;n++)
        {
            int l = getSizeOfEnglishForKthSentence(n);
            int m = getSizeOfFrenchForKthSentence(n);

            for(int i=1;i<=m;i++)
            {
                for(int j=0;j<=l;j++)
                {
                    setQ(j,i,l,m,getCJILM(j,i,l,m)/getCILM(i,l,m));
                }
            }
        }
        printf("All q parameters are set...\n");
    }

    return 0;
}
