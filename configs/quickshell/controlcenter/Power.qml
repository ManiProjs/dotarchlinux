import QtQuick
import QtQuick.Layouts
import Quickshell.Io

import "../theme"
import "./components"

ColumnLayout {
    Layout.fillWidth: true

    spacing: 10

    Text {
        text: "Power"

        color: Theme.foreground

        font.family: Theme.fontFamily
        font.pixelSize: 16

        font.bold: true
    }

    GridLayout {
        Layout.fillWidth: true

        columns: 4

        rowSpacing: 10
        columnSpacing: 10

        PowerButton {
            icon: "󰌾"
            title: "Lock"

            onClicked: lock.running = true
        }

        PowerButton {
            icon: "󰤄"
            title: "Suspend"

            onClicked: suspend.running = true
        }

        PowerButton {
            icon: "󰜉"
            title: "Restart"

            onClicked: reboot.running = true
        }

        PowerButton {
            icon: "󰐥"
            title: "Shutdown"

            onClicked: shutdown.running = true
        }
    }

    Process {
        id: lock

        command: ["loginctl", "lock-session"]
    }

    Process {
        id: suspend

        command: ["systemctl", "suspend"]
    }

    Process {
        id: reboot

        command: ["systemctl", "reboot"]
    }

    Process {
        id: shutdown

        command: ["systemctl", "poweroff"]
    }
}
