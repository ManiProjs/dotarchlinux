import QtQuick
import QtQuick.Layouts

import "../widgets"
import "../theme"
import "../popups"

RowLayout {
    id: root

    property var barWindow

    spacing: Theme.spacing

    Clock {}

    Cpu {}

    Memory {}

    Temperature {}

    Network {}

    Volume {}

    Battery {}

    Media {}

    Tray {
        barWindow: root.barWindow
    }

    ControlButton {
        id: control

        onClicked: {
            center.opened = !center.opened
        }
    }

    ControlCenter {
        id: center
    }
}
