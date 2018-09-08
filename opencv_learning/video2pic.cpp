#include <opencv2/opencv.hpp>
#include <sstream>
#include <iostream>
#include <string>
using namespace cv;
using namespace std;

int main(int argc , char** argv)
{
	VideoCapture capture("patten.avi");
        int i=0;
	
        while(1)
	{       
		Mat frame;
		capture>>frame;
		i=i+1;
		string filename;
                stringstream stream;
		stream<<i;
		stream>>filename;
		filename=filename+".jpg";

		if(frame.empty())
			break;

		imwrite(filename , frame);
	}
	
	return 0;
}

				
