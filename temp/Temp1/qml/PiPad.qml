import QtQuick 2.9
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.3

ApplicationWindow {
    id: window
    visible: true
    width:800 
    height:480
    title: qsTr("PiPad")
    background: Rectangle {
        color: "#000000"
    }

    header: ToolBar {
        contentHeight: toolButton.implicitHeight

        ToolButton {
            id: toolButton
            text: "\u2630"
            font.pixelSize: Qt.application.font.pixelSize * 1.6
            onClicked: {
                drawer.open()
            }
        }

        Label {
            text: stackView.currentItem.title
            anchors.centerIn: parent
        }
    }
    // footer: TabBar {
    //     id: menu
    //     width: parent.width
    //     TabButton {
    //         text: qsTr("\u2302")
    //         width: implicitWidth
    //     }
    //     TabButton {
    //         text: qsTr("\u2302")
    //         font.family: "Sans-serif"
    //         font.pixelSize:36
    //         width: implicitWidth
    //     }
    //     TabButton {
    //         text: qsTr("Activity")
    //         width: implicitWidth
    //     }
    // }

    Drawer {
        id: drawer
        visible: false
        width: 60
        height: window.height

        Column {
            anchors.fill: parent

            ItemDelegate {
                text: qsTr("\u2302")
                font.family: "Sans-serif"
                font.pixelSize:36
                width: parent.width
                onClicked: {
                    stackView.push("HomeForm.ui.qml", true, true)
                    drawer.close()
                }
            }
            ItemDelegate {
                text: qsTr("\u231A")
                font.family: "Sans-serif"
                font.pixelSize:36
                width: parent.width
                onClicked: {
                    stackView.push("ManageAlarms.ui.qml", true, true)
                    drawer.close()
                }
            }
        }
    }

    StackView {
        id: stackView
        initialItem: "HomeForm.ui.qml"
        anchors.fill: parent
    }
}