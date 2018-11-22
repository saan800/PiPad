import QtQuick 2.9
import QtQuick.Controls 2.2

Page {
    width: window.width
    height: window.height

    title: qsTr("Manage Alarms")

    Rectangle {
        width: window.width
        height: window.height
        color: "#000000"

        Label {
            text: qsTr("Manage alarms here")
            color:Qt.rgba(1, 1, 1, 1)
            anchors.centerIn: parent
        }
    }
}
