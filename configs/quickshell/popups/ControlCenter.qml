import QtQuick
import Quickshell

import "../controlcenter"

PopupWindow {
    id: root

    property bool opened: false

    visible: opened

    anchor.window: barWindow
    anchor.rect.x: anchor.window.width - width - 15
    anchor.rect.y: 50

    color: "transparent"

    implicitWidth: 700
    implicitHeight: 600

    ControlCenterView {
        anchors.fill: parent
    }
}
