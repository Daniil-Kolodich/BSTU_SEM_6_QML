import QtQuick.Window 2.12
import QtQuick 2.5
import QtQuick.Controls 1.4
import QtGraphicalEffects 1.0
import QtQuick.Controls.Styles 1.4
import SystemScripts 1.0
import KeyboardHandler 1.0


Window {
    id: window
    property string selectedColor: "black"
    property string selectedSecondColor: "white"
    visible: true
    width: 1024
    height: 800
    color: "#000000"
    title: qsTr("LGBTQ+")

    Rectangle {
        property int amount: 4
        id: column
        x: 0
        y: 0
        width: parent.width
        height: parent.height * 0.1
        color: "black"
        z: 2

        CustomButton {
            id: navButton1
            anchors.left: parent.left
            anchors.top: parent.top
            width: parent.width / column.amount
            height: parent.height
            _label: "Lab1"
            _color: selectedColor
            _secondColor: selectedSecondColor
            onClicked: {
                loader.source = "lab1.qml";
            }
        }
        CustomButton {
            id: navButton2
            anchors.left: navButton1.right
            anchors.top: parent.top
            width: parent.width / column.amount
            height: parent.height
            _label: "Lab2"
            _color: selectedColor
            _secondColor: selectedSecondColor

            onClicked: {
                loader.source = "lab2.qml";
            }
        }
        CustomButton {
            id: navButton3
            anchors.left: navButton2.right
            anchors.top: parent.top
            width: parent.width / column.amount
            height: parent.height
            _label: "Lab3"
            _color: selectedColor
            _secondColor: selectedSecondColor

            onClicked: {
                loader.source = "lab3.qml"
            }
        }
        CustomButton {
            id: navButton4
            anchors.left: navButton3.right
            anchors.top: parent.top
            width: parent.width / column.amount
            height: parent.height
            _label: "Info.ru"
            _color: selectedColor
            _secondColor: selectedSecondColor

            onClicked: {
                loader.source = "info.qml"
            }
        }

    }

    Item {
        id: content
        x: 0
        width: parent.width
        height: parent.height - column.height
        anchors.top: column.bottom

        Loader{
            width: parent.width
            height: parent.height
            id: loader
            source: ""
        }
    }

    SystemScripts {
        id: systemScripts
        command: ""
    }

    KeyboardHandler {
        id: keyboardHandler
    }


    function setColor(clr) {
        if (clr !== window.selectedSecondColor)
            window.selectedColor = clr;
    }

    function setSecondaryColor(clr) {
        if (clr !== window.selectedColor)
            window.selectedSecondColor = clr;
    }
}
