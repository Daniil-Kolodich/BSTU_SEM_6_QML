import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4


Item {
    width: parent.width
    height: parent.height

    Rectangle {
        id: lab3NavMenu
        width: parent.width
        height: parent.height / 5 * 4
        color: "black"

        CustomButton {
            id: lab3NavButton1
            width: parent.width / 3
            height: parent.height
            _color: window.selectedColor
            _secondColor: window.selectedSecondColor
            _label: "Press key 1"
            anchors.left: parent.left
            anchors.top: parent.top

            onClicked: {
                lab3KeyboardResult.text = "";
                keyboardHandler.invoke(1)
            }
        }

        CustomButton {
            id: lab3NavButton2
            width: parent.width / 3
            height: parent.height
            _color: window.selectedColor
            _secondColor: window.selectedSecondColor
            _label: "Press LOCK key"
            anchors.left: lab3NavButton1.right
            anchors.top: parent.top
            onClicked: {
                lab3KeyboardResult.text = "";
                keyboardHandler.invoke(2)
                lab3KeyboardResult.text = keyboardHandler.result
            }
        }

        CustomButton {
            id: lab3NavButton3
            width: parent.width / 3
            height: parent.height
            _color: window.selectedColor
            _secondColor: window.selectedSecondColor
            _label: "Press ESCAPE"
            anchors.left: lab3NavButton2.right
            anchors.top: parent.top

            onClicked: {
                lab3KeyboardResult.text = "";
                keyboardHandler.invoke(3)
//                keyboardResult.text = "If u will press key esc, we will invert CapsLock and NumLock values";
            }
        }
    }
    Rectangle {
        width: parent.width
        height: parent.height - lab3NavMenu.height
        anchors.top: lab3NavMenu.bottom
        color: window.selectedColor

        Text{
            id: lab3KeyboardResult
            text: ""
            color: window.selectedSecondColor
            font.family: "arial"
            font.pointSize: 20
            font.weight: Font.ExtraBold
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
        }


    }
}
