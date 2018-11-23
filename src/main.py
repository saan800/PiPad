#!/usr/bin/python3
# -*- coding: utf-8 -*-

import sys
from PyQt5.QtGui import QGuiApplication, QFont
from PyQt5.QtQml import QQmlApplicationEngine
from PyQt5.QtCore import QObject, pyqtSignal, pyqtSlot
  
if __name__ == "__main__":
    # Create an instance of the application
    app = QGuiApplication(sys.argv)
    app.setFont(QFont("Sans-serif"))
    # Create QML engine
    engine = QQmlApplicationEngine()
    # Load the main qml file into the engine
    engine.load("qml/PiPad.qml")

    # exit everything with close app window
    engine.quit.connect(app.quit)
    sys.exit(app.exec_())
