import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4


Item {
    width: parent.width
    height: parent.height

    Rectangle {
        id: lab4NavMenu
        width: parent.width
        height: parent.height / 5 * 2
        color: "black"

        CustomButton {
            id: lab4NavButton1
            width: parent.width / 3
            height: parent.height
            _color: window.selectedColor
            _secondColor: window.selectedSecondColor
            _label: "Проектор"
            anchors.left: parent.left
            anchors.top: parent.top

            onClicked: {
                lab4InfoViewer.text = "also info"
            }
        }

        CustomButton {
            id: lab4NavButton2
            width: parent.width / 3
            height: parent.height
            _color: window.selectedColor
            _secondColor: window.selectedSecondColor
            _label: "RS-232"
            anchors.left: lab4NavButton1.right
            anchors.top: parent.top
            onClicked: {
                lab4InfoViewer.text = "rs info"
            }
        }

        CustomButton {
            id: lab4NavButton3
            width: parent.width / 3
            height: parent.height
            _color: window.selectedColor
            _secondColor: window.selectedSecondColor
            _label: "Git"
            anchors.left: lab4NavButton2.right
            anchors.top: parent.top

            onClicked: {
                lab4InfoViewer.text = "git info"
            }
        }
    }

    Rectangle {
        width: parent.width
        height: parent.height - lab4NavMenu.height
        anchors.top: lab4NavMenu.bottom
        color: window.selectedColor
        Text {
            id: lab4InfoViewer
            width: parent.width
            height: parent.height
            color: window.selectedSecondColor
            text: ""
            font.family: "arial"
            font.pointSize: 20
            font.weight: Font.ExtraBold
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
        }

    }

}
