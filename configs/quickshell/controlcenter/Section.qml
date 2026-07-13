import QtQuick
import QtQuick.Layouts

import "../theme"

ColumnLayout {
    id: root

    property string title: ""

    default property alias content: container.data

        spacing: Theme.spacing

        Text {
            visible: root.title.length > 0

            text: root.title

            color: Theme.foreground

            font.family: Theme.fontFamily
            font.pixelSize: Theme.titleSize
            font.bold: true
        }

        ColumnLayout {
            id: container

            Layout.fillWidth: true

            spacing: Theme.spacing
        }
}
