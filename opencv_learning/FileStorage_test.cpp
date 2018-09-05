#include <iostream>
#include <opencv2/opencv.hpp>
#include <opencv2/highgui.hpp>
#include <opencv2/core/core.hpp>

using namespace std;
using namespace cv;

int main(int argc , char** argv)
{
	FileStorage fs("1.xml" , FileStorage::WRITE);
	int num1,num2;
	num1=3,num2=4;
	fs<<"num1"<<num1;
	fs<<"num2"<<num2;
	Mat A(4,5,CV_32FC1,Scalar(10));
	//fs["A"]<<A;
	fs.release();
	return 0;
}
