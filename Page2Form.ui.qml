import QtQuick 2.12
import QtQuick.Controls 2.5

Page {
    width: 750
    height: 1334

    header: Label {
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
    }

    Rectangle {
        id: rectangle
        x: 0
        y: -(window.height * 0.5)
        width: window.width * 2
        height: window.height * 2
        color: "#566159"
        transformOrigin: Item.Bottom
    }

    Rectangle {
        id: rectangle1
        x: (window.width * 0.5) - (rectangle1.width * 0.5)
        y: (window.height * 0.2) - (rectangle1.height * 0.5)
        width: (window.height * 0.35) - (rectangle1.height * 0.1)
        height: (window.height * 0.35) - (rectangle1.height * 0.1)
        color: "#ffffff"
        radius: 50
        border.width: 3
    }

    Text {
        id: convertedColor
        color: "#FFFFFF"
        x: (window.width * 0.5) - (convertedColor.width * 0.5)
        y: (window.height * 0.5) - (rectangle1.height * 0.5)
        width: (window.height * 0.3) - (rectangle1.height * 0.1)
        height: (window.height * 0.1) - (rectangle1.height * 0.1)
        text: "Color"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 36
    }

    Rectangle {
        id: rgb
        x: (window.width * 0.5) - (rgb.width * 0.5)
        y: (window.height * 0.6) - (rectangle1.height * 0.5)
        width: (window.height * 0.4) - (rectangle1.height * 0.1)
        height: (window.height * 0.1) - (rectangle1.height * 0.1)
        color: "#282828"
        radius: 50
        border.width: 3
    }

    TextInput {
        id: textInput
        x: (window.width * 0.5) - (textInput.width * 0.5)
        y: (window.height * 0.6) - (rectangle1.height * 0.5)
        width: (window.height * 0.4) - (rectangle1.height * 0.1)
        height: (window.height * 0.1) - (rectangle1.height * 0.1)
        color: "#ffffff"
        text: "HEX"
        font.pixelSize: 36
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        mouseSelectionMode: TextInput.SelectCharacters
        font.bold: false
        font.family: "Verdana"

        maximumLength: 6
    }

    Button {
        id: button
        x: (window.width * 0.5) - (button.width * 0.5)
        y: (window.height * 0.8) - (rectangle1.height * 0.5)
        width: (window.height * 0.3) - (rectangle1.height * 0.1)
        height: (window.height * 0.1) - (rectangle1.height * 0.1)
        text: qsTr("Konwertuj")
        font.pointSize: 36

        palette: {
            button: "#282828"
        }

        onClicked: {
            converter.convertToRGB(textInput.text)
            convertedColor.text = converter.returnOutput()
            rectangle1.color = "#" + textInput.text
        }
    }
}
