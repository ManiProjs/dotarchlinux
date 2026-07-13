import QtQuick
import QtQuick.Layouts

import "../../theme"

Card {
    id: root

    property string icon: ""
    property string title: ""
    property string subtitle: ""

    property color accentColor: Theme.accent
    property bool active: false

    signal clicked()

    color: mouse.containsMouse
    ? Theme.surfaceHover
    : Theme.surface

    border.color: active
    ? accentColor
    : Theme.outline

    scale: mouse.pressed
    ? 0.97
    : mouse.containsMouse
    ? Theme.hoverScale
    : 1.0

    Behavior on scale {
        NumberAnimation {
            duration: Theme.animationFast
        }
    }

    Behavior on border.color {
        ColorAnimation {
            duration: Theme.animationFast
        }
    }

    Behavior on color {
        ColorAnimation {
            duration: Theme.animationFast
        }
    }

    RowLayout {
        anchors.fill: parent

        spacing: Theme.spacing

        Rectangle {
            Layout.preferredWidth: 42
            Layout.preferredHeight: 42

            radius: 12

            color: active
            ? accentColor
            : Qt.lighter(Theme.surface, 1.25)

            Behavior on color {
                ColorAnimation {
                    duration: Theme.animationFast
                }
            }

            Text {
                anchors.centerIn: parent

                text: root.icon

                color: active
                ? "white"
                : Theme.foreground

                font.family: Theme.fontFamily
                font.pixelSize: 22
            }
        }

        ColumnLayout {
            Layout.fillWidth: true

            spacing: 2

            Text {
                text: root.title

                color: Theme.foreground

                font.family: Theme.fontFamily
                font.pixelSize: Theme.fontSize
                font.bold: true

                elide: Text.ElideRight
            }

            Text {
                text: root.subtitle

                color: Theme.secondary

                font.family: Theme.fontFamily
                font.pixelSize: Theme.subtitleSize

                elide: Text.ElideRight
            }
        }
    }

    MouseArea {
        id: mouse

        anchors.fill: parent

        hoverEnabled: true

        cursorShape: Qt.PointingHandCursor

        onClicked: root.clicked()
    }
}
