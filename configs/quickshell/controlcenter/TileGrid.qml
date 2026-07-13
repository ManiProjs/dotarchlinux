import QtQuick
import QtQuick.Layouts

import "components"
import "../theme"

GridLayout {
    id: root

    columns: 2

    rowSpacing: Theme.spacing
    columnSpacing: Theme.spacing

    Layout.fillWidth: true

    Tile {
        icon: "󰕾"

        title: "Volume"

        subtitle: "65%"

        Layout.fillWidth: true
    }

    Tile {
        icon: "󰖩"

        title: "Wi-Fi"

        subtitle: "Disconnected"

        Layout.fillWidth: true
    }

    Tile {
        icon: "󰂯"

        title: "Bluetooth"

        subtitle: "Off"

        Layout.fillWidth: true
    }

    Tile {
        icon: "󰁹"

        title: "Battery"

        subtitle: "100%"

        Layout.fillWidth: true
    }
}
