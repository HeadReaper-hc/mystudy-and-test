#include <iostream>
#include <stdlib.h>
#include <math.h>
#include <ceres/ceres.h>
#include <vector>

using namespace std;
using namespace ceres;

struct CostFunctor {
   CostFunctor(double observed_x , double observed_y):_observed_x(observed_x),_observed_y(observed_y){}
   template <typename T>
   bool operator()(const T* const a, T* residual) const {
     residual[0] = T(_observed_y) - ceres::exp(a[0]*_observed_x);
     return true;
   }
   
   double _observed_x;
   double _observed_y;
};

int main(int argc , char** argv){

	double a_truth=1.0;
        vector<double> observed_x;
        vector<double> observed_y;

        for(int i=0;i<100;i++)
        {
		observed_x.push_back(0.01*i);
	}

        for(int i=0;i<observed_x.size();i++)
	{
		observed_y.push_back(ceres::exp(observed_x[i]*a_truth)+double(rand())/RAND_MAX/5);
		cout<<observed_y[i]<<endl;
	}

	double a=0;
	
	Problem problem;
        for (int i = 0; i < observed_x.size(); i++) 
        {
        	CostFunction* cost_function =
       		new AutoDiffCostFunction<CostFunctor, 1, 1>(
                new CostFunctor(observed_x[i],observed_y[i]));
                problem.AddResidualBlock(cost_function, NULL, &a);
        }

	Solver::Options options;
        options.minimizer_progress_to_stdout = true;
        Solver::Summary summary;
        Solve(options, &problem, &summary);

        std::cout << summary.BriefReport() << "\n";
        std::cout << "a : " << a_truth
                 << " -> " << a << "\n";
        return 0;
}
