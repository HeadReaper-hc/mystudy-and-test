/*************************************************************************
 * �ļ����� homography
 *
 * ���ߣ� ����
 * �ʼ��� 11734026@zju.edu.cn
 * ʱ�䣺 2018/8/5
 *
 * ˵���� �ο�rpg_svo(https://github.com/uzh-rpg/rpg_svo)  �T������
 *************************************************************************/
#ifndef HC_VO_HOMOGRAPHY_H_
#define HC_VO_HOMOGRAPHY_H_

#include <Eigen/Core>
#include <Eigen/StdVector>
#include <Eigen/SVD>
#include <sophus/se3.h>

namespace hc_vo {

	using namespace Eigen;
	using namespace std;

	/// ��Ӧ����ֽ�
	struct HomographyDecomposition
	{
		Vector3d t;
		Matrix3d R;
		double   d;
		Vector3d n;

		Sophus::SE3 T; //!< �ڶ���ͼ�񵽵�һ��ͼ��������ת��ƽ��
		int score;
	};

	class Homography
	{
	public:
		EIGEN_MAKE_ALIGNED_OPERATOR_NEW

			/// ��Ӧ�任 ����ͼ���ж�Ӧ�������㣬���༰��ͶӰ���
			Homography(const vector<Vector2d, aligned_allocator<Vector2d> >& fts1,
			const vector<Vector2d, aligned_allocator<Vector2d> >& fts2,
			double focal_length,
			double thresh_in_px);

		void calcFromPlaneParams(const Vector3d & normal,
			const Vector3d & point_on_plane);

		void calcFromMatches();

		size_t computeMatchesInliers();

		bool computeSE3fromMatches();

		bool decompose();

		void findBestDecomposition();


	public:

		double thresh_;//!< ��ͶӰ����ֵ
		double focal_length_;//!< �������㵥Ӧ������ransac����ֵ�����Ϊ����ֵ��
		const std::vector<Vector2d, aligned_allocator<Vector2d> >& fts_c1_; //!< �ڵ�һ��ͼ���ϵ�����
		const std::vector<Vector2d, aligned_allocator<Vector2d> >& fts_c2_; //!< �ڵڶ���ͼ���ϵ�����
		std::vector<bool> inliers_;
		Sophus::SE3 T_c2_from_c1_;             //!< ����ͼ��������ת��ƽ��
		Matrix3d H_c2_from_c1_;                   //!< ��Ӧ����
		//list<HomographyDecomposition> decompositions;
		HomographyDecomposition decompositions_[8];
		size_t decomp_size_;
	};
}

#endif // HC_VO_HOMOGRAPHY_H_
