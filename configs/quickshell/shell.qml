//@ pragma UseQApplication

import QtQuick
import Quickshell
import Quickshell.Hyprland
import "modules"
import "launcher"

ShellRoot {
  TopBar {}

  Launcher {
    id: launcher

    Component.onCompleted: {
      open()
    }
  }
}
