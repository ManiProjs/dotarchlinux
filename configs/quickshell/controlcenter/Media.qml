import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

import "./components"
import "../theme"

ColumnLayout {
    id: root

    Layout.fillWidth: true

    spacing: 10

    Text {
        text: "Media"

        color: Theme.foreground

        font.family: Theme.fontFamily
        font.pixelSize: 16
        font.bold: true
    }

    Rectangle {
        Layout.fillWidth: true
        implicitHeight: 120

        radius: Theme.radius

        color: Theme.workspaceHover

        border.width: 1
        border.color: Qt.rgba(1, 1, 1, 0.05)

        RowLayout {
            anchors.fill: parent
            anchors.margins: 14

            spacing: 14

            Rectangle {
                Layout.preferredWidth: 88
                Layout.preferredHeight: 88

                radius: Theme.radius

                color: Theme.workspaceActive

                Text {
                    anchors.centerIn: parent

                    text: "󰎆"

                    color: Theme.foreground

                    font.family: Theme.fontFamily
                    font.pixelSize: 34
                }
            }

            ColumnLayout {
                Layout.fillWidth: true

                spacing: 4

                Text {
                    text: "Nothing Playing"

                    color: Theme.foreground

                    font.family: Theme.fontFamily
                    font.pixelSize: 15

                    font.bold: true

                    elide: Text.ElideRight
                }

                Text {
                    text: "Open Spotify, mpv, VLC..."

                    color: Theme.secondary

                    font.family: Theme.fontFamily
                    font.pixelSize: 12

                    elide: Text.ElideRight
                }

                Item {
                    Layout.fillHeight: true
                }

                Rectangle {
                    Layout.fillWidth: true

                    implicitHeight: 4

                    radius: 2

                    color: Theme.workspaceActive

                    Rectangle {
                        width: parent.width * 0.35

                        anchors {
                            left: parent.left
                            top: parent.top
                            bottom: parent.bottom
                        }

                        radius: parent.radius

                        color: Theme.accent
                    }
                }

                RowLayout {
                    Layout.alignment: Qt.AlignHCenter

                    spacing: 18

                    RowLayout {
                        Layout.alignment: Qt.AlignHCenter

                        spacing: 10

                        IconButton {
                            icon: "󰒮"

                            onClicked: previous.running = true
                        }

                        IconButton {
                            width: 52
                            height: 52
                            radius: 26

                            icon: "󰐊"

                            onClicked: playPause.running = true
                        }

                        IconButton {
                            icon: "󰒭"

                            onClicked: next.running = true
                        }
                    }
                }
            }
        }
    }
}
