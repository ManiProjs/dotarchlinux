import QtQuick
import QtQuick.Layouts
import Quickshell
import "../theme"
import "../widgets"

PanelWindow {
    id: barWindow

    anchors {
        top: true
        left: true
        right: true
    }

    implicitHeight: 42

    color: "transparent"

    Rectangle {
        anchors {
            fill: parent
            leftMargin: 15
            rightMargin: 15
            topMargin: 5
        }

        radius: 16

        color: Qt.rgba(20 / 255, 20 / 255, 25 / 255, 0.92)

        RowLayout {
            anchors.fill: parent

            anchors.leftMargin: 12
            anchors.rightMargin: 12

            spacing: 8

            LeftSection {}

            Item {
                Layout.fillWidth: true
            }

            CenterSection {}

            RightSection {
                barWindow: barWindow
            }
        }
    }
}
