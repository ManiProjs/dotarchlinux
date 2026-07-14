import QtQuick
import QtQuick.Layouts

import "../theme"

Rectangle {
    id: root

    implicitWidth: 700
    implicitHeight: 600

    radius: Theme.radius

    color: Theme.background

    border.width: 1
    border.color: Qt.rgba(1, 1, 1, 0.06)

    clip: true

    ColumnLayout {
        anchors.fill: parent
        anchors.margins: 18

        spacing: 18

        Header {
            Layout.fillWidth: true
        }

        QuickSettings {
            Layout.fillWidth: true
        }

        Sliders {
            Layout.fillWidth: true
        }

        Media {
            Layout.fillWidth: true
        }

        Item {
            Layout.fillHeight: true
        }

        Rectangle {
            Layout.fillWidth: true

            height: 1

            color: Qt.rgba(1, 1, 1, 0.05)
        }

        Power {
            Layout.fillWidth: true
        }
    }

    Behavior on opacity {
        NumberAnimation {
            duration: 180
        }
    }

    Behavior on scale {
        NumberAnimation {
            duration: 180
        }
    }

    Component.onCompleted: {
        opacity = 1
        scale = 1
    }

    opacity: 0
    scale: 0.97
}
