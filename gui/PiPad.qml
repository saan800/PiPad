import Qt 4.7
Rectangle {
    width:800 
    height:480 
    Image {
        source:"PiPad_images/background.png"
        id:background
        opacity: 0.0
        x:0 ; y:0
        width:800 
        height:480 
    }
    Text {
        text:'None' 
        font.pixelSize:62 
        color:Qt.rgba(1, 1, 1, 1)
        id:timezone
        x:284 ; y:139
        width:180 
        height:23 
    }
    Text {
        text:'None' 
        font.pixelSize:62 
        color:Qt.rgba(1, 1, 1, 1)
        id:clock
        x:20 ; y:20
        width:451 
        height:120 
    }
}
