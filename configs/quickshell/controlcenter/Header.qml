import QtQuick
import QtQuick.Layouts

import "../theme"

Item {
    id: root

    implicitHeight: 64

    RowLayout {
        anchors.fill: parent

        spacing: Theme.spacing

        ColumnLayout {
            Layout.fillWidth: true

            spacing: 2

            Text {
                text: "Control Center"

                color: Theme.foreground

                font.family: Theme.fontFamily
                font.pixelSize: Theme.titleSize
                font.bold: true
            }

            Text {
                id: dateText

                color: Theme.secondary

                font.family: Theme.fontFamily
                font.pixelSize: Theme.subtitleSize

                text: Qt.formatDate(
                    new Date(),
                                    "dddd, MMMM d"
                )
            }
        }

        ColumnLayout {
            spacing: 0

            Text {
                id: clock

                horizontalAlignment: Text.AlignRight

                color: Theme.foreground

                font.family: Theme.fontFamily
                font.pixelSize: 26
                font.bold: true

                text: Qt.formatTime(
                    new Date(),
                                    "HH:mm"
                )
            }
        }
    }

    Timer {
        interval: 1000

        running: true

        repeat: true

        onTriggered: {
            let now = new Date()

            clock.text = Qt.formatTime(
                now,
                "HH:mm"
            )

            dateText.text = Qt.formatDate(
                now,
                "dddd, MMMM d"
            )
        }
    }
}
