#############################################################################
# Makefile for building: cubesolver.app/Contents/MacOS/cubesolver
# Generated by qmake (3.0) (Qt 5.5.1)
# Project:  cubesolver.pro
# Template: app
# Command: /usr/local/bin/qmake -spec macx-xcode -o cubesolver.xcodeproj/project.pbxproj cubesolver.pro
#############################################################################

MAKEFILE      = project.pbxproj

MOC       = /Users/Ysl/Qt5.5.1/5.5/clang_64/bin/moc
UIC       = /Users/Ysl/Qt5.5.1/5.5/clang_64/bin/uic
LEX       = flex
LEXFLAGS  = 
YACC      = yacc
YACCFLAGS = -d
DEFINES       = -DQT_NO_DEBUG -DQT_MULTIMEDIAWIDGETS_LIB -DQT_WIDGETS_LIB -DQT_MULTIMEDIA_LIB -DQT_GUI_LIB -DQT_NETWORK_LIB -DQT_SERIALPORT_LIB -DQT_CORE_LIB
INCPATH       = -I. -I/usr/local/include/opencv -I/usr/local/include -I../../../Qt5.5.1/5.5/clang_64/lib/QtMultimediaWidgets.framework/Headers -I../../../Qt5.5.1/5.5/clang_64/lib/QtWidgets.framework/Headers -I../../../Qt5.5.1/5.5/clang_64/lib/QtMultimedia.framework/Headers -I../../../Qt5.5.1/5.5/clang_64/lib/QtGui.framework/Headers -I../../../Qt5.5.1/5.5/clang_64/lib/QtNetwork.framework/Headers -I../../../Qt5.5.1/5.5/clang_64/lib/QtSerialPort.framework/Headers -I../../../Qt5.5.1/5.5/clang_64/lib/QtCore.framework/Headers -I. -I/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.11.sdk/System/Library/Frameworks/OpenGL.framework/Headers -I/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.11.sdk/System/Library/Frameworks/AGL.framework/Headers -I../../../Qt5.5.1/5.5/clang_64/mkspecs/macx-clang -F/Users/Ysl/Qt5.5.1/5.5/clang_64/lib
DEL_FILE  = rm -f
MOVE      = mv -f

preprocess: compilers
clean preprocess_clean: compiler_clean

mocclean: compiler_moc_header_clean compiler_moc_source_clean

mocables: compiler_moc_header_make_all compiler_moc_source_make_all

check: first

compilers: moc_cube2d.cpp moc_cube3d.cpp moc_SplashScreen.cpp\
	 moc_video.cpp moc_window.cpp
compiler_objective_c_make_all:
compiler_objective_c_clean:
compiler_rcc_make_all:
compiler_rcc_clean:
compiler_moc_header_make_all: moc_cube2d.cpp moc_cube3d.cpp moc_SplashScreen.cpp moc_video.cpp moc_window.cpp
compiler_moc_header_clean:
	-$(DEL_FILE) moc_cube2d.cpp moc_cube3d.cpp moc_SplashScreen.cpp moc_video.cpp moc_window.cpp
moc_cube2d.cpp: all.h \
		../../../Qt5.5.1/5.5/clang_64/lib/QtGui.framework/Headers/QtGui \
		../../../Qt5.5.1/5.5/clang_64/lib/QtWidgets.framework/Headers/qwidget.h \
		../../../Qt5.5.1/5.5/clang_64/lib/QtGui.framework/Headers/qimage.h \
		../../../Qt5.5.1/5.5/clang_64/lib/QtWidgets.framework/Headers/qpushbutton.h \
		../../../Qt5.5.1/5.5/clang_64/lib/QtWidgets.framework/Headers/QLineEdit \
		../../../Qt5.5.1/5.5/clang_64/lib/QtWidgets.framework/Headers/QMessageBox \
		../../../Qt5.5.1/5.5/clang_64/lib/QtWidgets.framework/Headers/QLabel \
		../../../Qt5.5.1/5.5/clang_64/lib/QtWidgets.framework/Headers/QHBoxLayout \
		../../../Qt5.5.1/5.5/clang_64/lib/QtWidgets.framework/Headers/QVBoxLayout \
		common.h \
		../../../Qt5.5.1/5.5/clang_64/lib/QtCore.framework/Headers/QDebug \
		../../../Qt5.5.1/5.5/clang_64/lib/QtCore.framework/Headers/QThread \
		../../../Qt5.5.1/5.5/clang_64/lib/QtWidgets.framework/Headers/QTextEdit \
		../../../Qt5.5.1/5.5/clang_64/lib/QtWidgets.framework/Headers/QComboBox \
		../../../Qt5.5.1/5.5/clang_64/lib/QtCore.framework/Headers/QMutex \
		video.h \
		/usr/local/include/opencv2/opencv.hpp \
		CubeSolver.h \
		cube2d.h
	/Users/Ysl/Qt5.5.1/5.5/clang_64/bin/moc $(DEFINES) -D__APPLE__ -D__GNUC__=4 -D__APPLE_CC__ -I/Users/Ysl/Qt5.5.1/5.5/clang_64/mkspecs/macx-clang -I/Users/Ysl/Documents/QT/cubesolver -I/usr/local/include/opencv -I/usr/local/include -I/Users/Ysl/Qt5.5.1/5.5/clang_64/lib/QtMultimediaWidgets.framework/Headers -I/Users/Ysl/Qt5.5.1/5.5/clang_64/lib/QtWidgets.framework/Headers -I/Users/Ysl/Qt5.5.1/5.5/clang_64/lib/QtMultimedia.framework/Headers -I/Users/Ysl/Qt5.5.1/5.5/clang_64/lib/QtGui.framework/Headers -I/Users/Ysl/Qt5.5.1/5.5/clang_64/lib/QtNetwork.framework/Headers -I/Users/Ysl/Qt5.5.1/5.5/clang_64/lib/QtSerialPort.framework/Headers -I/Users/Ysl/Qt5.5.1/5.5/clang_64/lib/QtCore.framework/Headers -F/Users/Ysl/Qt5.5.1/5.5/clang_64/lib cube2d.h -o moc_cube2d.cpp

moc_cube3d.cpp: all.h \
		../../../Qt5.5.1/5.5/clang_64/lib/QtGui.framework/Headers/QtGui \
		../../../Qt5.5.1/5.5/clang_64/lib/QtWidgets.framework/Headers/qwidget.h \
		../../../Qt5.5.1/5.5/clang_64/lib/QtGui.framework/Headers/qimage.h \
		../../../Qt5.5.1/5.5/clang_64/lib/QtWidgets.framework/Headers/qpushbutton.h \
		../../../Qt5.5.1/5.5/clang_64/lib/QtWidgets.framework/Headers/QLineEdit \
		../../../Qt5.5.1/5.5/clang_64/lib/QtWidgets.framework/Headers/QMessageBox \
		../../../Qt5.5.1/5.5/clang_64/lib/QtWidgets.framework/Headers/QLabel \
		../../../Qt5.5.1/5.5/clang_64/lib/QtWidgets.framework/Headers/QHBoxLayout \
		../../../Qt5.5.1/5.5/clang_64/lib/QtWidgets.framework/Headers/QVBoxLayout \
		common.h \
		../../../Qt5.5.1/5.5/clang_64/lib/QtCore.framework/Headers/QDebug \
		../../../Qt5.5.1/5.5/clang_64/lib/QtCore.framework/Headers/QThread \
		../../../Qt5.5.1/5.5/clang_64/lib/QtWidgets.framework/Headers/QTextEdit \
		../../../Qt5.5.1/5.5/clang_64/lib/QtWidgets.framework/Headers/QComboBox \
		../../../Qt5.5.1/5.5/clang_64/lib/QtCore.framework/Headers/QMutex \
		window.h \
		video.h \
		/usr/local/include/opencv2/opencv.hpp \
		cube2d.h \
		CubeSolver.h \
		cube3d.h \
		cube3d.h
	/Users/Ysl/Qt5.5.1/5.5/clang_64/bin/moc $(DEFINES) -D__APPLE__ -D__GNUC__=4 -D__APPLE_CC__ -I/Users/Ysl/Qt5.5.1/5.5/clang_64/mkspecs/macx-clang -I/Users/Ysl/Documents/QT/cubesolver -I/usr/local/include/opencv -I/usr/local/include -I/Users/Ysl/Qt5.5.1/5.5/clang_64/lib/QtMultimediaWidgets.framework/Headers -I/Users/Ysl/Qt5.5.1/5.5/clang_64/lib/QtWidgets.framework/Headers -I/Users/Ysl/Qt5.5.1/5.5/clang_64/lib/QtMultimedia.framework/Headers -I/Users/Ysl/Qt5.5.1/5.5/clang_64/lib/QtGui.framework/Headers -I/Users/Ysl/Qt5.5.1/5.5/clang_64/lib/QtNetwork.framework/Headers -I/Users/Ysl/Qt5.5.1/5.5/clang_64/lib/QtSerialPort.framework/Headers -I/Users/Ysl/Qt5.5.1/5.5/clang_64/lib/QtCore.framework/Headers -F/Users/Ysl/Qt5.5.1/5.5/clang_64/lib cube3d.h -o moc_cube3d.cpp

moc_SplashScreen.cpp: all.h \
		../../../Qt5.5.1/5.5/clang_64/lib/QtGui.framework/Headers/QtGui \
		../../../Qt5.5.1/5.5/clang_64/lib/QtWidgets.framework/Headers/qwidget.h \
		../../../Qt5.5.1/5.5/clang_64/lib/QtGui.framework/Headers/qimage.h \
		../../../Qt5.5.1/5.5/clang_64/lib/QtWidgets.framework/Headers/qpushbutton.h \
		../../../Qt5.5.1/5.5/clang_64/lib/QtWidgets.framework/Headers/QLineEdit \
		../../../Qt5.5.1/5.5/clang_64/lib/QtWidgets.framework/Headers/QMessageBox \
		../../../Qt5.5.1/5.5/clang_64/lib/QtWidgets.framework/Headers/QLabel \
		../../../Qt5.5.1/5.5/clang_64/lib/QtWidgets.framework/Headers/QHBoxLayout \
		../../../Qt5.5.1/5.5/clang_64/lib/QtWidgets.framework/Headers/QVBoxLayout \
		common.h \
		../../../Qt5.5.1/5.5/clang_64/lib/QtCore.framework/Headers/QDebug \
		../../../Qt5.5.1/5.5/clang_64/lib/QtCore.framework/Headers/QThread \
		../../../Qt5.5.1/5.5/clang_64/lib/QtWidgets.framework/Headers/QTextEdit \
		../../../Qt5.5.1/5.5/clang_64/lib/QtWidgets.framework/Headers/QComboBox \
		../../../Qt5.5.1/5.5/clang_64/lib/QtCore.framework/Headers/QMutex \
		../../../Qt5.5.1/5.5/clang_64/lib/QtWidgets.framework/Headers/QDialog \
		SplashScreen.h
	/Users/Ysl/Qt5.5.1/5.5/clang_64/bin/moc $(DEFINES) -D__APPLE__ -D__GNUC__=4 -D__APPLE_CC__ -I/Users/Ysl/Qt5.5.1/5.5/clang_64/mkspecs/macx-clang -I/Users/Ysl/Documents/QT/cubesolver -I/usr/local/include/opencv -I/usr/local/include -I/Users/Ysl/Qt5.5.1/5.5/clang_64/lib/QtMultimediaWidgets.framework/Headers -I/Users/Ysl/Qt5.5.1/5.5/clang_64/lib/QtWidgets.framework/Headers -I/Users/Ysl/Qt5.5.1/5.5/clang_64/lib/QtMultimedia.framework/Headers -I/Users/Ysl/Qt5.5.1/5.5/clang_64/lib/QtGui.framework/Headers -I/Users/Ysl/Qt5.5.1/5.5/clang_64/lib/QtNetwork.framework/Headers -I/Users/Ysl/Qt5.5.1/5.5/clang_64/lib/QtSerialPort.framework/Headers -I/Users/Ysl/Qt5.5.1/5.5/clang_64/lib/QtCore.framework/Headers -F/Users/Ysl/Qt5.5.1/5.5/clang_64/lib SplashScreen.h -o moc_SplashScreen.cpp

moc_video.cpp: all.h \
		../../../Qt5.5.1/5.5/clang_64/lib/QtGui.framework/Headers/QtGui \
		../../../Qt5.5.1/5.5/clang_64/lib/QtWidgets.framework/Headers/qwidget.h \
		../../../Qt5.5.1/5.5/clang_64/lib/QtGui.framework/Headers/qimage.h \
		../../../Qt5.5.1/5.5/clang_64/lib/QtWidgets.framework/Headers/qpushbutton.h \
		../../../Qt5.5.1/5.5/clang_64/lib/QtWidgets.framework/Headers/QLineEdit \
		../../../Qt5.5.1/5.5/clang_64/lib/QtWidgets.framework/Headers/QMessageBox \
		../../../Qt5.5.1/5.5/clang_64/lib/QtWidgets.framework/Headers/QLabel \
		../../../Qt5.5.1/5.5/clang_64/lib/QtWidgets.framework/Headers/QHBoxLayout \
		../../../Qt5.5.1/5.5/clang_64/lib/QtWidgets.framework/Headers/QVBoxLayout \
		common.h \
		../../../Qt5.5.1/5.5/clang_64/lib/QtCore.framework/Headers/QDebug \
		../../../Qt5.5.1/5.5/clang_64/lib/QtCore.framework/Headers/QThread \
		../../../Qt5.5.1/5.5/clang_64/lib/QtWidgets.framework/Headers/QTextEdit \
		../../../Qt5.5.1/5.5/clang_64/lib/QtWidgets.framework/Headers/QComboBox \
		../../../Qt5.5.1/5.5/clang_64/lib/QtCore.framework/Headers/QMutex \
		/usr/local/include/opencv2/opencv.hpp \
		video.h
	/Users/Ysl/Qt5.5.1/5.5/clang_64/bin/moc $(DEFINES) -D__APPLE__ -D__GNUC__=4 -D__APPLE_CC__ -I/Users/Ysl/Qt5.5.1/5.5/clang_64/mkspecs/macx-clang -I/Users/Ysl/Documents/QT/cubesolver -I/usr/local/include/opencv -I/usr/local/include -I/Users/Ysl/Qt5.5.1/5.5/clang_64/lib/QtMultimediaWidgets.framework/Headers -I/Users/Ysl/Qt5.5.1/5.5/clang_64/lib/QtWidgets.framework/Headers -I/Users/Ysl/Qt5.5.1/5.5/clang_64/lib/QtMultimedia.framework/Headers -I/Users/Ysl/Qt5.5.1/5.5/clang_64/lib/QtGui.framework/Headers -I/Users/Ysl/Qt5.5.1/5.5/clang_64/lib/QtNetwork.framework/Headers -I/Users/Ysl/Qt5.5.1/5.5/clang_64/lib/QtSerialPort.framework/Headers -I/Users/Ysl/Qt5.5.1/5.5/clang_64/lib/QtCore.framework/Headers -F/Users/Ysl/Qt5.5.1/5.5/clang_64/lib video.h -o moc_video.cpp

moc_window.cpp: all.h \
		../../../Qt5.5.1/5.5/clang_64/lib/QtGui.framework/Headers/QtGui \
		../../../Qt5.5.1/5.5/clang_64/lib/QtWidgets.framework/Headers/qwidget.h \
		../../../Qt5.5.1/5.5/clang_64/lib/QtGui.framework/Headers/qimage.h \
		../../../Qt5.5.1/5.5/clang_64/lib/QtWidgets.framework/Headers/qpushbutton.h \
		../../../Qt5.5.1/5.5/clang_64/lib/QtWidgets.framework/Headers/QLineEdit \
		../../../Qt5.5.1/5.5/clang_64/lib/QtWidgets.framework/Headers/QMessageBox \
		../../../Qt5.5.1/5.5/clang_64/lib/QtWidgets.framework/Headers/QLabel \
		../../../Qt5.5.1/5.5/clang_64/lib/QtWidgets.framework/Headers/QHBoxLayout \
		../../../Qt5.5.1/5.5/clang_64/lib/QtWidgets.framework/Headers/QVBoxLayout \
		common.h \
		../../../Qt5.5.1/5.5/clang_64/lib/QtCore.framework/Headers/QDebug \
		../../../Qt5.5.1/5.5/clang_64/lib/QtCore.framework/Headers/QThread \
		../../../Qt5.5.1/5.5/clang_64/lib/QtWidgets.framework/Headers/QTextEdit \
		../../../Qt5.5.1/5.5/clang_64/lib/QtWidgets.framework/Headers/QComboBox \
		../../../Qt5.5.1/5.5/clang_64/lib/QtCore.framework/Headers/QMutex \
		video.h \
		/usr/local/include/opencv2/opencv.hpp \
		cube2d.h \
		CubeSolver.h \
		cube3d.h \
		window.h \
		window.h
	/Users/Ysl/Qt5.5.1/5.5/clang_64/bin/moc $(DEFINES) -D__APPLE__ -D__GNUC__=4 -D__APPLE_CC__ -I/Users/Ysl/Qt5.5.1/5.5/clang_64/mkspecs/macx-clang -I/Users/Ysl/Documents/QT/cubesolver -I/usr/local/include/opencv -I/usr/local/include -I/Users/Ysl/Qt5.5.1/5.5/clang_64/lib/QtMultimediaWidgets.framework/Headers -I/Users/Ysl/Qt5.5.1/5.5/clang_64/lib/QtWidgets.framework/Headers -I/Users/Ysl/Qt5.5.1/5.5/clang_64/lib/QtMultimedia.framework/Headers -I/Users/Ysl/Qt5.5.1/5.5/clang_64/lib/QtGui.framework/Headers -I/Users/Ysl/Qt5.5.1/5.5/clang_64/lib/QtNetwork.framework/Headers -I/Users/Ysl/Qt5.5.1/5.5/clang_64/lib/QtSerialPort.framework/Headers -I/Users/Ysl/Qt5.5.1/5.5/clang_64/lib/QtCore.framework/Headers -F/Users/Ysl/Qt5.5.1/5.5/clang_64/lib window.h -o moc_window.cpp

compiler_moc_source_make_all:
compiler_moc_source_clean:
compiler_uic_make_all:
compiler_uic_clean:
compiler_rez_source_make_all:
compiler_rez_source_clean:
compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: compiler_moc_header_clean 

