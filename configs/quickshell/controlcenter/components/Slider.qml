import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

import "../../theme"

ColumnLayout {
    id: root

    property string icon: ""
    property string title: ""
    property real value: 50

    signal moved(real value)

    spacing: 6

    RowLayout {
        Layout.fillWidth: true

        Text {
            text: root.icon

            color: Theme.foreground

            font.family: Theme.fontFamily
            font.pixelSize: 18
        }

        Text {
            text: root.title

            color: Theme.foreground

            font.family: Theme.fontFamily

            Layout.fillWidth: true
        }

        Text {
            text: Math.round(root.value) + "%"

            color: Theme.secondary

            font.family: Theme.fontFamily
        }
    }

    Slider {
        id: slider

        Layout.fillWidth: true

        from: 0
        to: 100

        value: root.value

        onMoved: {
            root.value = value
            root.moved(value)
        }
    }
}
