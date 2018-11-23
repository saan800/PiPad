import QtQuick 2.2
import QtQuick.Window 2.2
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3

Window {
    id: window
    visible: true
    width: 800
    height: 400
    color: "#000000"
    title: qsTr("\u03C0Pad")

    Loader {
        id: loader
        width: parent.width
        height: parent.height - navBar.height
        source: "home.qml"
        asynchronous: true
        anchors.top: parent.top
        anchors.bottom: navBar.top


    }

    TabBar {
        id: navBar
        width: parent.width
        anchors.bottom: parent.bottom
        height: 40
        background: Rectangle {
            color: window.color
        }

        TabButton {
            id: btnHome
            text: qsTr("\u2302")
            font.family: "Sans-serif"
            font.pixelSize:24
            height: navBar.height
            width: navBar.height
            background: Rectangle {
                color: navBar.currentIndex == 0 ? "#666666" : window.color
            }
            onClicked: {
                loader.source = "home.qml"
            }

        }

        TabButton {
            id: btnManageAlarms
            text: qsTr("\u231A")
            font.family: "Sans-serif"
            font.pixelSize:20
            height: navBar.height
            width: navBar.height
            anchors.left: btnHome.right
            background: Rectangle {
                color: navBar.currentIndex == 1 ? "#666666" : window.color
            }
            onClicked: {
                loader.source = "page2.qml"
            }
        }
    }
}
