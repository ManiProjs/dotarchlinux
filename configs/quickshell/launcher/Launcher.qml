import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

import Quickshell
import Quickshell.Io

PanelWindow {
    id: root

    property bool opened: true

    implicitWidth: 720
    implicitHeight: 500

    anchors {
        top: true
        bottom: true
        left: true
        right: true
    }

    color: "transparent"

    FileView {
        id: appsFile

        path: Qt.resolvedUrl("services/apps.json")
        blockLoading: true
    }

    readonly property var apps: JSON.parse(appsFile.text())

    ListModel {
        id: appModel
    }

    Component.onCompleted: {
        console.log("Loaded", apps.length, "apps")

        for (const app of apps)
            appModel.append(app)

            console.log("Model:", appModel.count)
    }

    Rectangle {
        anchors.centerIn: parent

        width: 720
        height: 500

        radius: 22
        color: "#dd1e1e2e"

        ColumnLayout {
            anchors.fill: parent
            anchors.margins: 20
            spacing: 12

            TextField {
                Layout.fillWidth: true
                placeholderText: "Search applications..."
            }

            ListView {
                Layout.fillWidth: true
                Layout.fillHeight: true

                clip: true
                spacing: 4

                model: appModel

                delegate: Rectangle {
                    required property string name
                    required property string comment

                    width: ListView.view.width
                    height: 44

                    color: "transparent"

                    Column {
                        anchors {
                            left: parent.left
                            leftMargin: 12
                            verticalCenter: parent.verticalCenter
                        }

                        Text {
                            text: name
                            color: "white"
                            font.pixelSize: 15
                        }

                        Text {
                            text: comment
                            color: "#aaaaaa"
                            font.pixelSize: 11
                            visible: comment.length > 0
                        }
                    }
                }
            }
        }
    }
}
