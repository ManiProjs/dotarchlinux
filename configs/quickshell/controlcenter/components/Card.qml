import QtQuick
import "../../theme"

Rectangle {
    id: root

    default property alias content: contentItem.data

        radius: Theme.radius

        color: Theme.surface

        border.width: 1
        border.color: Theme.outline

        clip: true

        implicitWidth: 180
        implicitHeight: 100

        Item {
            id: contentItem

            anchors.fill: parent
            anchors.margins: Theme.padding
        }

        Behavior on color {
            ColorAnimation {
                duration: Theme.animationFast
            }
        }

        Behavior on border.color {
            ColorAnimation {
                duration: Theme.animationFast
            }
        }
}
