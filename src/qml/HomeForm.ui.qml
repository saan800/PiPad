import QtQuick 2.9
import QtQuick.Controls 2.2

Page {
    width: window.width
    height: window.height

    title: qsTr("Home")

    Rectangle {
        width: parent.width
        height: parent.height
        color: "#000000"

        // Image {
        //     source:"images/background.png"
        //     id:background
        //     opacity: 0.0
        //     x:0 ; y:0
        //     width: window.width
        //     height: window.height
        // }
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
}
