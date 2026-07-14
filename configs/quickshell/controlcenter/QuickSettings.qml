import QtQuick
import QtQuick.Layouts

import "../theme"
import "./components"

ColumnLayout {
    id: root

    Layout.fillWidth: true

    spacing: 10

    Text {
        text: "Quick Settings"

        color: Theme.foreground

        font.family: Theme.fontFamily
        font.pixelSize: 16

        font.bold: true
    }

    GridLayout {
        Layout.fillWidth: true

        columns: 2

        columnSpacing: 10
        rowSpacing: 10

        Tile {
            icon: "󰕾"
            title: "Volume"
            subtitle: "78%"
            active: true
        }

        Tile {
            icon: "󰖩"
            title: "Wi-Fi"
            subtitle: "Connected"
            active: true
        }

        Tile {
            icon: "󰂯"
            title: "Bluetooth"
            subtitle: "Off"
            active: false
        }

        Tile {
            icon: "󰁹"
            title: "Battery"
            subtitle: "94%"
            active: true
        }
    }
}
