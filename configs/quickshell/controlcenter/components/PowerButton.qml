import QtQuick
import QtQuick.Layouts

import "../../theme"

Rectangle {
    id: root

    property string icon: ""
    property string title: ""

    signal clicked()

    Layout.fillWidth: true
    implicitHeight: 82

    radius: Theme.radius

    color: mouse.containsMouse
    ? Theme.workspaceActive
    : Theme.workspaceHover

    border.width: 1
    border.color: Qt.rgba(1, 1, 1, 0.05)

    Behavior on color {
        ColorAnimation {
            duration: 150
        }
    }

    MouseArea {
        id: mouse

        anchors.fill: parent

        hoverEnabled: true

        cursorShape: Qt.PointingHandCursor

        onClicked: root.clicked()
    }

    Column {
        anchors.centerIn: parent

        spacing: 6

        Text {
            anchors.horizontalCenter: parent.horizontalCenter

            text: root.icon

            color: Theme.foreground

            font.family: Theme.fontFamily
            font.pixelSize: 24
        }

        Text {
            anchors.horizontalCenter: parent.horizontalCenter

            text: root.title

            color: Theme.secondary

            font.family: Theme.fontFamily
            font.pixelSize: 11
        }
    }
}
