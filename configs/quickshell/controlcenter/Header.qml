import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

import "../theme"

Rectangle {
    id: root

    Layout.fillWidth: true
    implicitHeight: 72

    color: "transparent"

    RowLayout {
        anchors.fill: parent

        spacing: 16

        //
        // Avatar
        //
        Rectangle {
            width: 48
            height: 48
            radius: 24

            color: Theme.workspaceActive

            Text {
                anchors.centerIn: parent

                text: "󰀄"

                font.family: Theme.fontFamily
                font.pixelSize: 24

                color: Theme.foreground
            }
        }

        //
        // User / Date
        //
        ColumnLayout {
            Layout.fillWidth: true

            spacing: 2

            Text {
                text: Qt.platform.os === "linux"
                ? "Mani"
                : "User"

                color: Theme.foreground

                font.family: Theme.fontFamily
                font.pixelSize: 18

                font.bold: true
            }

            Text {
                id: dateLabel

                color: Theme.secondary

                font.family: Theme.fontFamily
                font.pixelSize: 12

                text: Qt.formatDate(
                    new Date(),
                                    "dddd, d MMMM yyyy"
                )
            }
        }

        //
        // Time
        //
        Rectangle {
            radius: Theme.radius

            color: Theme.workspaceActive

            implicitWidth: 90
            implicitHeight: 42

            Text {
                id: timeLabel

                anchors.centerIn: parent

                color: Theme.foreground

                font.family: Theme.fontFamily
                font.pixelSize: 16

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
            const now = new Date()

            timeLabel.text =
            Qt.formatTime(now, "HH:mm")

            dateLabel.text =
            Qt.formatDate(
                now,
                "dddd, d MMMM yyyy"
            )
        }
    }
}
