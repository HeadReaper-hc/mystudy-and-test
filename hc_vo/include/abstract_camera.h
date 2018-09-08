/*************************************************************************
 * �ļ����� abstract_camera
 *
 * ���ߣ� ����
 * �ʼ��� 11734026@zju.edu.cn
 * ʱ�䣺 2018/7/31
 *
 * ˵���� �ο�rpg_svo(https://github.com/uzh-rpg/rpg_svo) �������
 *************************************************************************/
#ifndef HC_VO_ABSTRACT_CAMERA_H_
#define HC_VO_ABSTRACT_CAMERA_H_


#include <Eigen/Core>

namespace hc_vo
{
	using namespace Eigen;

	/**	������������
	 */
	class  AbstractCamera
	{
	public:
		AbstractCamera() {}; // �˹��캯����ȫ�����ģ��ʹ��
		AbstractCamera(int width, int height) : width_(width), height_(height) {};

		virtual ~AbstractCamera() {};

		/// ͼ����������ת���������ϵ�µĵ�
		virtual Vector3d cam2world(const double& x, const double& y) const = 0;

		/// ͼ����������ת���������ϵ�µĵ�
		virtual Vector3d cam2world(const Vector2d& px) const = 0;

		/// ���������ϵ�µĵ�תͼ����������
		virtual Vector2d world2cam(const Vector3d& xyz_c) const = 0;

		/// ͼ��ƽ�����ص���������ת��������
		virtual Vector2d world2cam(const Vector2d& uv) const = 0;

		/// ����x����Ľ���ֵ
		virtual double getFocalLength() const = 0;

		/// ��������ֱ��ʵĿ���
		inline int width() const { return width_; }
		/// ��������ֱ��ʵĸ߶�
		inline int height() const { return height_; }

		///  �ж������Ƿ���ͼ��֡��
		inline bool isInFrame(const Vector2i & obs, int boundary = 0) const
		{
			if (obs[0] >= boundary && obs[0] < width() - boundary
				&& obs[1] >= boundary && obs[1] < height() - boundary)
				return true;
			return false;
		}

		/// �ж������Ƿ���ͼ��֡�У�����ͼ��߶�
		inline bool isInFrame(const Vector2i &obs, int boundary, int level) const
		{
			if (obs[0] >= boundary && obs[0] < width() / (1 << level) - boundary
				&& obs[1] >= boundary && obs[1] < height() / (1 << level) - boundary)
				return true;
			return false;
		}

	protected:
		int width_; //!< ����ֱ��ʵĿ���
		int height_; //!< ����ֱ��ʵĸ߶�
	};
}

#endif // HC_VO_ABSTRACT_CAMERA_H_
