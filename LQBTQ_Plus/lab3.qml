import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4


Item {
    width: parent.width
    height: parent.height

    TextField {
        id: lab3KeyInputField
        property int currentPressedButton: 0
        width: 0
        height: 0
        layer.enabled: false
        x: 0
        y: 0
        z: -10
        focus: true
        Keys.onPressed: {
            if (currentPressedButton === 0)
                return;
            if (currentPressedButton === 1 && event.key === Qt.Key_1) {
                console.log("one pressed");
                keyboardHandler.flush();
                lab3KeyboardResult.text = "";
            }
            if (currentPressedButton === 2 && event.key === Qt.Key_CapsLock) {
                console.log("caps pressed");
                lab3KeyboardResult.text = "Caps Lock pressed";
            }
            if (currentPressedButton === 2 && event.key === Qt.Key_NumLock) {
                console.log("num pressed");
                lab3KeyboardResult.text = "Num Lock pressed";
            }
            if (currentPressedButton === 3 && event.key === Qt.Key_Escape) {
                console.log("esc pressed");
                keyboardHandler.invert();
                lab3KeyboardResult.text = "";
            }

            currentPressedButton = 0;
            if (lab3KeyboardResult.text.length !== 0)
                lab3KeyboardResult.text += "\n";
            lab3KeyboardResult.text += "Click buttons for more info...";
        }
    }


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
                lab3KeyboardResult.text = "Press 1 one to turn leds for 3 seconds";
                lab3KeyInputField.forceActiveFocus();
                lab3KeyInputField.currentPressedButton = 1;
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
                lab3KeyboardResult.text = "Press any Lock button";
                lab3KeyInputField.forceActiveFocus();
                lab3KeyInputField.currentPressedButton = 2;
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
                lab3KeyboardResult.text = "Press Esc to invert all Lock keys";
                lab3KeyInputField.forceActiveFocus();
                lab3KeyInputField.currentPressedButton = 3;
            }
        }
    }

    Rectangle {
        width: parent.width
        height: parent.height - lab3NavMenu.height
        anchors.top: lab3NavMenu.bottom
        color: window.selectedColor

        Text{
            width: parent.width
            height: parent.height
            anchors.centerIn: parent
            id: lab3KeyboardResult
            text: "Click buttons for more info..."
            color: window.selectedSecondColor
            font.family: "arial"
            font.pointSize: 20
            font.weight: Font.ExtraBold
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
        }
    }
}
