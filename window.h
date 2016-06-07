#pragma once

#include "all.h"
#include "common.h"
#include "video.h"
#include "cube2d.h"
#include "cube3d.h"
#include "CubeSolver.h"
#include "QtSerialPort/QSerialPort"
#include "QtSerialPort/QSerialPortInfo"
class Cube2d;
class Cube3d;
static quint32 MagicNumber=0x203948ab;
class MainWindow :public QWidget
{
	Q_OBJECT
public:

	MainWindow(QWidget * parent = 0);

	void setTextEditContent(const QString & text);
	void appendTextEditContent(const QString & text);
	CubePosition & setCubePosition() { return *cubePosition; }

	const CubePosition & getCubePosition() { return *cubePosition; }

	const std::vector<int> & getCubeColor() { return cube2d->getCubeColor(); }

	void sendData(const QString & data) {
		serialPort->write(data.toLatin1().data());
	}
	~MainWindow() {}
private:
	void initVideos();
    bool readConfig(int videoNumber,CaputreFrameCubeConfig * config);
public slots:
	void setSerialPort(const QString & text);
void closeEvent(QCloseEvent *event)
{
	exit_from_window();
}
void solve();
	
private:
	/*�ĸ�����ͷ*/
	Video *capture0;
	Video *capture1;
	Video *capture2;
	Video *capture3;

	Video * captureList[4];
	
	QVector<Video *> ptrVideos;

	/*ħ��ƽ��ͼ*/
	Cube2d * cube2d;
	/*��άħ��*/
	Cube3d * cube3d;
	/*�������*/
	QTextEdit * outputText;

	CubePosition * cubePosition;

	/*��ť*/
	QPushButton * solveButton;
	
	QPushButton * exitButton;

	QSerialPort * serialPort;

	QComboBox * serialPortCombBox;

	QLabel * serialLabel;
private slots:

	void exit_from_window();
};