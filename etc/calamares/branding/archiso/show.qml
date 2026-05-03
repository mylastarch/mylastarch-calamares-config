import QtQuick 2.12
import QtQuick.Controls 2.12

Rectangle {
  anchors.fill: parent
  color: "#121212"
  Column {
    anchors.centerIn: parent
    spacing: 8
    Image { source: "branding/logo.png"; width: 128; height: 128; fillMode: Image.PreserveAspectFit }
    Text { text: "Arch KDE Installer"; color: "white"; font.pixelSize: 20 }
    Text { text: "Calamares setup"; color: "#bbbbbb"; font.pixelSize: 12 }
  }
}