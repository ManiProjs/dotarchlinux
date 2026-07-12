import QtQuick
import Quickshell
import "../theme"
import "../widgets"
import "../services"

PanelWindow {
    id: root

    property bool opened: false

    visible: opened

    color: "transparent"

    anchors {
        top: true
        right: true
    }

    implicitWidth: 380
    implicitHeight: 560


    MouseArea {
        anchors.fill: parent

        onClicked: {
            root.opened = false
        }
    }


    Rectangle {
        anchors.fill: parent

        anchors.margins: 10

        radius: 24

        color: Qt.rgba(
            18 / 255,
            18 / 255,
            22 / 255,
            0.96
        )

        border.width: 1
        border.color: "#33ffffff"


        MouseArea {
            anchors.fill: parent

            // Prevent closing when clicking inside
            onClicked: {}
        }


        Column {
            anchors.fill: parent

            anchors.margins: 20

            spacing: 18


            Text {
                text: "Control Center"

                color: Theme.foreground

                font.family: Theme.fontFamily
                font.pixelSize: 22
                font.bold: true
            }


            Row {
                spacing: 12


                ControlTile {
                    icon: Audio.muted
                    ? "󰖁"
                    : "󰕾"

                    title: "Volume"

                    value: Audio.volume + "%"


                    onClicked: {
                        Audio.toggleMute()
                    }
                }


                ControlTile {
                    icon: "󰖩"

                    title: "WiFi"

                    value: Network.name
                }
            }


            VolumeSlider {
                width: parent.width
                height: 32
            }


            Row {
                spacing: 12


                ControlTile {
                    icon: "󰁹"

                    title: "Battery"

                    value: Battery.percentage + "%"
                }


                ToggleTile {
                    icon: "󰂯"

                    title: "Bluetooth"

                    enabled: false
                }
            }


            Item {
                width: parent.width
                height: 12
            }


            Rectangle {
                width: parent.width
                height: 52

                radius: 14

                color: "#1e293b"


                Text {
                    anchors.centerIn: parent

                    text: "⏻  Power"

                    color: "white"

                    font.family: Theme.fontFamily
                    font.pixelSize: 14
                }


                MouseArea {
                    anchors.fill: parent


                    onClicked: {

                        Quickshell.execDetached([
                            "systemctl",
                            "poweroff"
                        ])

                    }
                }
            }
        }
    }
}
