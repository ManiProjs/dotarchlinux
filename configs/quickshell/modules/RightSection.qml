import QtQuick
import QtQuick.Layouts

import "../widgets"
import "../theme"

RowLayout {
    id: root

    property var barWindow
    property var controlCenter

    spacing: Theme.spacing

    Clock {}

    Cpu {}

    Memory {}

    Network {}

    Volume {}

    // Uncomment this line to show battery indicator in  the bar
    // Battery {}

    Media {}

    Tray {
        barWindow: root.barWindow
    }

    ControlButton {
        onClicked: {
            root.controlCenter.opened = !root.controlCenter.opened
        }
    }
}
