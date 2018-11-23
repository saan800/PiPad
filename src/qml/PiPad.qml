import QtQuick 2.2
import QtQuick.Window 2.2
import QtQuick.Controls 2.3
import Qt.labs.calendar 1.0
import QtQuick.Extras 1.4
import QtQuick.Layouts 1.3
import QtGraphicalEffects 1.0

Window {
    id: window
    visible: true
    width: 800
    height: 480
    color: "#000000"
    title: qsTr("\u03C0 Pad")

    TabBar {
        id: navigationBar
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
            height: navigationBar.height
            width: navigationBar.height
            background: Rectangle {
                color: navigationBar.currentIndex == 0 ? "#666666" : window.color
            }
        }
        TabButton {
            id: btnManageAlarms
            text: qsTr("\u231A")
            font.family: "Sans-serif"
            font.pixelSize:20
            height: navigationBar.height
            width: navigationBar.height
            background: Rectangle {
                color: navigationBar.currentIndex == 1 ? "#666666" : window.color
            }
        }
    }

    StackLayout {
        id: stackLayout
        width: parent.width
        height: parent.height - navigationBar.height
        anchors.top: parent.top
        currentIndex: navigationBar.currentIndex
        Item {
            id: homeTab

            Text {
                id:clock
                text:'12:38pm'
                font.family: "Sans-serif"
                font.pixelSize:98
                horizontalAlignment: Text.AlignRight
                color:Qt.rgba(1, 1, 1, 1)
                x:20 ; y:20
                width:450
                height:120
            }
            Text {
                id:timezone
                text:'United Kingdom'
                font.family: "Sans-serif"
                font.pixelSize:14
                horizontalAlignment: Text.AlignRight
                color:Qt.rgba(1, 1, 1, 1)
                x:283 ; y:140
                width:180
                height:25
            }
        }
        Item {
            id: discoverTab

            Text {
                id:text2
                text:'Manage Alarms'
                font.family: "Sans-serif"
                font.pixelSize:14
                horizontalAlignment: Text.AlignRight
                color:Qt.rgba(1, 1, 1, 1)
                x:283 ; y:140
                width:180
                height:25
            }
        }
    }
}

/*##^## Designer {
    D{i:27;invisible:true}
}
 ##^##*/
