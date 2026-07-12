pragma Singleton

import QtQuick

QtObject {

    // Typography

    readonly property string fontFamily: "JetBrainsMono Nerd Font"

    readonly property int fontSize: 12
    readonly property int iconSize: 14

    // Colors

    readonly property color foreground: "#e5e7eb"
    readonly property color secondary: "#cbd5e1"
    readonly property color inactive: "#6b7280"

    readonly property color background: "#eb141419"

    readonly property color workspaceHover: "#141a22"
    readonly property color workspaceActive: "#1e293b"

    readonly property color accent: "#3b82f6"

    // Geometry

    readonly property int barHeight: 32

    readonly property int radius: 16

    readonly property int workspaceRadius: 10

    readonly property int padding: 12

    readonly property int spacing: 10
}
