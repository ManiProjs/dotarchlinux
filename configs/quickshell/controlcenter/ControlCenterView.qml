import QtQuick
import QtQuick.Layouts

import "../theme"
import "components"

Rectangle {
    id: root

    implicitWidth: Theme.controlCenterWidth
    implicitHeight: Theme.controlCenterHeight

    radius: Theme.radiusLarge

    color: Theme.background

    border.width: 1
    border.color: Theme.outline

    clip: true

    ColumnLayout {
        anchors.fill: parent
        anchors.margins: Theme.paddingLarge

        spacing: Theme.spacingLarge

        Header {}

        Section {
            title: "Quick Settings"

            TileGrid {
                Layout.fillWidth: true
            }
        }

        Section {
            title: "Sliders"

            Card {
                Layout.fillWidth: true

                ColumnLayout {
                    anchors.fill: parent

                    spacing: Theme.spacing

                    Text {
                        text: "󰕾  Volume"

                        color: Theme.foreground

                        font.family: Theme.fontFamily
                        font.bold: true
                    }

                    Rectangle {
                        Layout.fillWidth: true

                        implicitHeight: 6

                        radius: 3

                        color: Theme.workspaceHover

                        Rectangle {
                            anchors {
                                left: parent.left
                                top: parent.top
                                bottom: parent.bottom
                            }

                            width: parent.width * 0.65

                            radius: parent.radius

                            color: Theme.accent
                        }
                    }

                    Text {
                        text: "󰃠  Brightness"

                        color: Theme.foreground

                        font.family: Theme.fontFamily
                        font.bold: true
                    }

                    Rectangle {
                        Layout.fillWidth: true

                        implicitHeight: 6

                        radius: 3

                        color: Theme.workspaceHover

                        Rectangle {
                            anchors {
                                left: parent.left
                                top: parent.top
                                bottom: parent.bottom
                            }

                            width: parent.width * 0.45

                            radius: parent.radius

                            color: Theme.warning
                        }
                    }
                }
            }
        }

        Section {
            title: "Media"

            Card {
                Layout.fillWidth: true

                implicitHeight: 90

                RowLayout {
                    anchors.fill: parent

                    spacing: Theme.spacing

                    Rectangle {
                        Layout.preferredWidth: 56
                        Layout.preferredHeight: 56

                        radius: Theme.radiusSmall

                        color: Theme.surfaceHover

                        Text {
                            anchors.centerIn: parent

                            text: "󰎆"

                            color: Theme.foreground

                            font.family: Theme.fontFamily
                            font.pixelSize: 24
                        }
                    }

                    ColumnLayout {
                        Layout.fillWidth: true

                        spacing: 2

                        Text {
                            text: "Nothing Playing"

                            color: Theme.foreground

                            font.family: Theme.fontFamily
                            font.bold: true
                        }

                        Text {
                            text: "Start media to see controls"

                            color: Theme.secondary

                            font.family: Theme.fontFamily
                            font.pixelSize: Theme.subtitleSize
                        }
                    }
                }
            }
        }

        Item {
            Layout.fillHeight: true
        }

        Section {
            title: "Power"

            RowLayout {
                Layout.fillWidth: true

                spacing: Theme.spacing

                Repeater {
                    model: [
                        { icon: "󰌾", title: "Lock" },
                        { icon: "󰤄", title: "Suspend" },
                        { icon: "󰜉", title: "Restart" },
                        { icon: "󰐥", title: "Shutdown" }
                    ]

                    delegate: Card {
                        Layout.fillWidth: true

                        implicitHeight: 72

                        Column {
                            anchors.centerIn: parent

                            spacing: 6

                            Text {
                                anchors.horizontalCenter: parent.horizontalCenter

                                text: modelData.icon

                                color: Theme.foreground

                                font.family: Theme.fontFamily
                                font.pixelSize: 22
                            }

                            Text {
                                anchors.horizontalCenter: parent.horizontalCenter

                                text: modelData.title

                                color: Theme.secondary

                                font.family: Theme.fontFamily
                                font.pixelSize: Theme.smallFontSize
                            }
                        }
                    }
                }
            }
        }
    }
}
