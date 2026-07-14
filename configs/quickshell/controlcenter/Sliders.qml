import QtQuick
import QtQuick.Layouts

import "../theme"
import "./components"

ColumnLayout {
    Layout.fillWidth: true

    spacing: 10

    Text {
        text: "Sliders"

        color: Theme.foreground

        font.family: Theme.fontFamily
        font.pixelSize: 16

        font.bold: true
    }

    Rectangle {
        Layout.fillWidth: true

        radius: Theme.radius

        color: Theme.workspaceHover

        border.width: 1
        border.color: Qt.rgba(1, 1, 1, 0.05)

        ColumnLayout {
            anchors.fill: parent
            anchors.margins: 14

            spacing: 16

            Slider {
                id: volumeSlider

                icon: "󰕾"
                title: "Volume"

                value: 75

                onMoved: {
                    // Connect to Audio later
                }
            }

            Slider {
                id: brightnessSlider

                icon: "󰃟"
                title: "Brightness"

                value: 60

                onMoved: {
                    // Connect to Brightness later
                }
            }
        }
    }
}
