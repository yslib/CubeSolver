#include "SplashScreen.h"

SplashScreen::SplashScreen(QWidget * parent /* = 0 */) :QDialog(parent)
{
	image = new QPixmap("Splash.png");
	imageLabel = new QLabel(this);
	imageLabel->setPixmap(*image);
	imageLabel->setScaledContents(true);
	setWindowFlags(Qt::FramelessWindowHint);				//ȥ��������
	setAttribute(Qt::WA_TranslucentBackground, true);		//���ڱ���͸��
	setFixedSize(500, 500);
}