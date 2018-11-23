import QtQuick 2.2

Item {
    id: homePage

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
/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
