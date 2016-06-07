#pragma once
#include "all.h"
#include "common.h"
#include "QMutex"
#include "QtMultimedia/QCamera"
#include "QtMultimedia/QAbstractVideoSurface"
#include "QtMultimedia/QCameraViewfinderSettings"
#include "QtMultimedia/QCameraInfo"
#include "QtMultimedia/QVideoFrame"
#include "QtMultimediaWidgets/qcameraviewfinder.h"
#include <opencv2/opencv.hpp>
/*
*
*����������ת��Ϊƽ���ϵ�����ͶӰ
*
*	|v11 v12 v13 0|
*	|v21 v22 v23 0|
*	|0   v32 v33 0|
*	|0   0   v43 1|
*/
class CaptureThread;
class Video;
static const double PI=3.1415926535;

class CaptureCubeFrame
{
private:

	float v11, v12, v13, v21, v22, v23, v32, v33, v43;

	float th, ph, rh;

	QSize screenSize;

	std::vector<Point3d> wordCoords;		//������������

	QVector<Point3d> detectPointsWorldCoords;		//�ɼ�����������

	float d;

	float mind, maxd;

	float minrho, maxrho;

	CubePosition * cubeInfo;

	void update();
	
public:

	//static const double PI;

	CaptureCubeFrame(CubePosition * cubePosition= NULL,DetectAreaIndex * detectIndex = NULL,QSize sceenSize = QSize(300, 400),double theta = PI / 4, double phy = PI / 4, double rho = 10.00);

	void toScreenCoord();

	void setTheta(float theta);	//

	void setPhi(float phi);

	void setRho(float rho); 	 //͸�ӳ̶�

	void addTheta(float del) { setTheta(th + del); }

	void addPhi(float del) { setPhi(ph + del); }

	void addRho(float del) { setRho(rh + del); }

	void setDistance(float dist) { d = dist; toScreenCoord(); };		//��ҰԶ��

	void addDistance(float del) { setDistance(d + del); }
	
	void setDetectPoints(const DetectAreaIndex * detectIndex);
    
    float getTheta();
    
    float getPhi();
    
    float getRho();
    
    float getDistance();
	
	QVector<QPointF> screenCoords;	//������Ļ����	
	QVector<QPointF> detectPointsScreenCoords;		//�ɼ�����Ļ����
	QVector<int> toIndex;
};


class VideoSurface :public QAbstractVideoSurface
{
    Q_OBJECT
public:
    VideoSurface(QLabel *canvas,QPainter * pter, CaptureCubeFrame * cf, DetectAreaIndex * da, CubePosition * cp);
    QList<QVideoFrame::PixelFormat> supportedPixelFormats(QAbstractVideoBuffer::HandleType handleType = QAbstractVideoBuffer::NoHandle)const;
    ~VideoSurface();
private slots:
    bool present(const QVideoFrame &frame);
private:
    QLabel * imageLabel;

    int width, height;

    QPainter * painter;

    CaptureCubeFrame * capFrame;

    DetectAreaIndex * detectArea;

    CubePosition * cubePosition;

    QImage *image;
private:
    int iX(float x) { return width / 2 + x; }

    int iY(float y) { return height / 2 - y; }

    void dLine(int p1, int p2);
};

//class VideoSurface :public QAbstractVideoSurface
//{
//	Q_OBJECT
//public:
//	VideoSurface(QLabel *lbl);
//	QList<QVideoFrame::PixelFormat> supportedPixelFormats(QAbstractVideoBuffer::HandleType handleType = QAbstractVideoBuffer::NoHandle)const;
//	void setLabel(QLabel * lbl);
	
//	bool present(const QVideoFrame &frame);
//	bool start(const QVideoSurfaceFormat &format) {return QAbstractVideoSurface::start(format); }
//	void stop() { QAbstractVideoSurface::stop(); }
//	bool isFormatSupported(const QVideoSurfaceFormat &format) { return true; }
//private:
//	QLabel * label;
//	QImage * image;
//};


class Video :public QWidget
{
	Q_OBJECT
public:
	Video(QCameraInfo * cameraInfo,QWidget * parent = 0, int dev = 0, CubePosition * cubePosition = NULL,DetectAreaIndex * detectIndex = NULL,double theta = PI / 4, double phy = PI / 4, double rho = 10.00);
    void readConfigure();
    bool writeConfigure(int videoNumber,CaputreFrameCubeConfig * config);
private:

	//���Բɼ�λ��	������9��
	enum { RectLeftTop = 100, RectBottomRight = 100, RectWidth = 20, RectHeight = 20, RectTopMargin = 20, RectLeftMargin = 20 };
	//ÿ���ӽ�Ӧ����������ʶ��3*9��λ��
	CaptureThread * capThread;

	int device;

	QImage * image;

    QLabel * imageLabel;

	cv::Mat * frame;

    QTimer * timer;

	cv::VideoCapture * cap;

	QCamera * camera;

	VideoSurface * videoSurface;

	QCameraViewfinder * finder;

	QPushButton * startCameraButton;

	QPushButton * stopCameraButton;
	//cv::Rect * rectArray;	//����λ��
	/*size of image */
	int width;
	int height;

	QPainter * painter;			//���Ʋɼ�������λ�õ�������

	CaptureCubeFrame * capFrame;

	CubePosition * cubePosition;

	//����¼��������
	bool leftPressing;
	bool rightPressing;
	QPoint prevMousePos;

	//����Ļ����ΪԲ����߼�����ת��Ϊ��Ļ����
	int iX(float x) { return width / 2 + x; }
	int iY(float y) { return height / 2 - y; }
	void dLine(int p1, int p2);

	private slots:
	void capture();

	//void updateFrame();
public slots:
	void openCamera();
	void closeCamera();
	void somethingError();
	void setDetectPoints(const DetectAreaIndex * detectIndex);
public:
	void mousePressEvent(QMouseEvent *event);
	void mouseReleaseEvent(QMouseEvent *event);
	void mouseMoveEvent(QMouseEvent *event);
	void wheelEvent(QWheelEvent *event);
	~Video();
};
class CaptureThread :public QThread
{
    Q_OBJECT
public:
    CaptureThread() {}
    CaptureThread(int w,int h,cv::VideoCapture * cp,
        cv::Mat * frm,
        QPainter * pter,
        QImage * img,
        QLabel * lbl,
        CubePosition * cb,
        DetectAreaIndex * da,
        CaptureCubeFrame * cf,
                  int dev,
                  Video * vd);
    ~CaptureThread() {};
public:
    void stop() {
        mutex.lock();
        stopped = true;
        mutex.unlock();
    }
signals:
    void updateFrame();
protected:
    void run();
private:
    volatile bool stopped;
    int device;
    int width, height;
    cv::Mat * frame;
    QPainter * painter;
    QPainter * painterVideo;
    cv::VideoCapture * cap;
    QImage * image;
    QLabel * imageLabel;
    CubePosition * cubePosition;
    DetectAreaIndex * detectArea;
    CaptureCubeFrame * capFrame;
    Video * video;

    QMutex mutex;
private:
    int iX(float x) { return width / 2 + x; };
    int iY(float y) { return height / 2 - y; };
    void dLine(int p1, int p2);
};
