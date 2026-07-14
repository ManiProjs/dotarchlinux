import QtQuick

import "../../theme"

Rectangle {
    id: root

    property string icon: ""
    signal clicked()

    width: 42
    height: 42
    radius: 21

    color: mouse.containsMouse
    ? Theme.workspaceActive
    : "transparent"

    border.width: 1
    border.color: Qt.rgba(1,1,1,0.05)

    Behavior on color {
        ColorAnimation {
            duration: 140
        }
    }

    Behavior on scale {
        NumberAnimation {
            duration: 100
        }
    }

    MouseArea {
        id: mouse

        anchors.fill: parent

        hoverEnabled: true

        cursorShape: Qt.PointingHandCursor

        onPressed: root.scale = 0.94
        onReleased: root.scale = 1
        onCanceled: root.scale = 1

        onClicked: root.clicked()
    }

    Text {
        anchors.centerIn: parent

        text: root.icon

        color: Theme.foreground

        font.family: Theme.fontFamily
        font.pixelSize: 18
    }
}
