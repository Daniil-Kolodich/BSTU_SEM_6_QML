import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4


Item {
    width: parent.width
    height: parent.height

    Rectangle {
        id: lab2NavMenu
        width: parent.width
        height: parent.height / 6
        color: "black"

        CustomButton {
            id: lab2NavButton1
            width: parent.width / 3
            height: parent.height
            _color: window.selectedColor
            _secondColor: window.selectedSecondColor
            _label: "Devices"
            anchors.left: parent.left
            anchors.top: parent.top

            onClicked: {
                systemScripts.command = "cat /proc/devices"
                systemScripts.invoke()
                lab2DataViewer._text = systemScripts.result;
            }
        }

        CustomButton {
            id: lab2NavButton2
            width: parent.width / 3
            height: parent.height
            _color: window.selectedColor
            _secondColor: window.selectedSecondColor
            _label: "CPU info"
            anchors.left: lab2NavButton1.right
            anchors.top: parent.top

            onClicked: {
                systemScripts.command = "cat /proc/cpuinfo"
                systemScripts.invoke()
                lab2DataViewer._text = systemScripts.result;
            }
        }

        CustomButton {
            id: lab2NavButton3
            width: parent.width / 3
            height: parent.height
            _color: window.selectedColor
            _secondColor: window.selectedSecondColor
            _label: "Memory info"
            anchors.left: lab2NavButton2.right
            anchors.top: parent.top

            onClicked: {
                systemScripts.command = "cat /proc/meminfo"
                systemScripts.invoke()
                lab2DataViewer._text = systemScripts.result;
            }
        }
    }


    CustomScrollView {
        id: lab2DataViewer
        width: parent.width
        height: parent.height - lab2NavMenu.height
        anchors.top: lab2NavMenu.bottom
        _color: window.selectedColor
        _secondColor: window.selectedSecondColor
        _text: ""

    }
}
