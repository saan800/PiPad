#!/usr/bin/python3
# -*- coding: utf-8 -*-

import sys
import PyQt5
from PyQt5.QtGui import QGuiApplication
from PyQt5.QtQml import QQmlApplicationEngine
from PyQt5.QtCore import QObject, pyqtSignal, pyqtSlot

# This is the type that will be registered with QML.  It must be a
# sub-class of QObject.
class Person(QObject):
    def __init__(self):
        QObject.__init__(self)


# Create an instance of the application
app = QGuiApplication(sys.argv)
# Create QML engine
engine = QQmlApplicationEngine()
# Create a person object
person = Person()
# And register it in the context of QML
engine.rootContext().setContextProperty("person", person)
# Load the qml file into the engine
engine.load("qml/PiPad.qml")

engine.quit.connect(app.quit)
sys.exit(app.exec_())


# import sys

# from PyQt5.QtGui import QGuiApplication
# from PyQt5.QtCore import pyqtProperty, QObject, QUrl
# from PyQt5.QtQml import qmlRegisterType, QQmlComponent, QQmlEngine

# # This is the type that will be registered with QML.  It must be a
# # sub-class of QObject.
# class Person(QObject):
#     def __init__(self, parent=None):
#         QObject.__init__(self)


# # Create the application instance.
# app = QGuiApplication(sys.argv)

# # Register the Python type.  Its URI is 'People', it's v1.0 and the type
# # will be called 'Person' in QML.
# qmlRegisterType(Person, 'People', 1, 0, 'Person')

# # Create a QML engine.
# engine = QQmlEngine()

# # Create a component factory and load the QML script.
# component = QQmlComponent(engine)
# component.loadUrl(QUrl('file.qml'))

# # Create an instance of the component.
# person = component.create()

# # exit correctly
# engine.quit.connect(app.quit)
# sys.exit(app.exec_())


# import sys

# from PyQt5.QtGui import QGuiApplication
# from PyQt5.QtCore import QDateTime, QObject, QUrl, pyqtSignal
# from PyQt5.Qt.QtDeclarative import QDeclarativeView
 
# app = QGuiApplication(sys.argv)
 
# # Create the QML user interface.
# view = QDeclarativeView()
# view.setSource(QUrl('file.qml'))
# view.setResizeMode(QDeclarativeView.SizeRootObjectToView)
# view.setGeometry(100, 100, 400, 240)
# view.show()
 
# app.exec_()