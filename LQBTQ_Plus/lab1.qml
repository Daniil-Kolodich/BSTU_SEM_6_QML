import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

Item {
    width: parent.width
    height: parent.height

    MouseArea {
        hoverEnabled: true
        id: lab1MouseArea
        width: parent.width
        height: parent.height
        z: -1
    }

    Rectangle {
        id: lab1PropDisplay
        width: parent.width / 3
        height: parent.height / 10
        color: window.selectedColor
        anchors.left: lab1ColorSelector.right
        anchors.top: lab1Labels.bottom
        Text {
            anchors.fill: parent
            text: lab1MouseArea.mouseX + " : " + lab1MouseArea.mouseY
            font.pointSize: 24
            color: window.selectedSecondColor
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
    }

    Rectangle {
        id: lab1Labels
        width: parent.width
        height: 100
        color: window.selectedColor

        Rectangle {
            id: lab1ColorSelectorLabelContainer
            width: parent.width / 3
            height: parent.height
            anchors.top: parent.top
            anchors.left: parent.left
            border.color: window.selectedSecondColor
            border.width: 5
            color: window.selectedColor
            Text {
                width: parent.width
                height: parent.height
                text: qsTr("Buttons Background color selector")
                font.family: "arial"
                font.pointSize: 14
                font.weight: Font.ExtraBold
                color: window.selectedSecondColor
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
            }
        }
        Rectangle {
            id: lab1PropertyLabelContainer
            width: parent.width / 3
            height: parent.height
            anchors.top: parent.top
            anchors.left: lab1ColorSelectorLabelContainer.right
            border.color: window.selectedSecondColor
            border.width: 5
            color: window.selectedColor
            Text {
                width: parent.width
                height: parent.height
                text: qsTr("Dynamic property")
                font.family: "arial"
                font.pointSize: 14
                font.weight: Font.ExtraBold
                color: window.selectedSecondColor
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
            }
        }
        Rectangle {
            id: lab1SecondaryColorLabelContainer
            width: parent.width / 3
            height: parent.height
            anchors.top: parent.top
            anchors.right: parent.right
            border.color: window.selectedSecondColor
            border.width: 5
            color: window.selectedColor
            Text {
                width: parent.width
                height: parent.height
                text: qsTr("Buttons Text color selector")
                font.family: "arial"
                font.pointSize: 14
                font.weight: Font.ExtraBold
                color: window.selectedSecondColor
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
            }
        }
    }

    Rectangle {
        id: lab1ColorSelector
        width: parent.width / 3
        height: parent.height / 5
        anchors.top: lab1Labels.bottom
        anchors.left: parent.left
        color: "grey"

        Item {
            id:lab1ColorSelectorContainer
            width: parent.width - 10
            height: parent.height - 10
            anchors.centerIn: parent

            Rectangle {
                id: lab1BlackSelector
                width: parent.width / 3
                height: parent. height / 2
                anchors.top: parent.top
                anchors.left: parent.left
                color: "black"

                MouseArea {
                    width: parent.width
                    height: parent.height
                    anchors.fill: parent

                    onClicked: {
                        window.setColor("black")
                    }
                }
            }

            Rectangle {
                id: lab1WhiteSelector
                width: parent.width / 3
                height: parent. height / 2
                anchors.top: parent.top
                anchors.left: lab1BlackSelector.right
                color: "white"
                MouseArea {
                    width: parent.width
                    height: parent.height
                    anchors.fill: parent

                    onClicked: {
                        window.setColor("white")
                    }
                }
            }

            Rectangle {
                id: lab1VioletSelector
                width: parent.width / 3
                height: parent. height / 2
                anchors.top: parent.top
                anchors.left: lab1WhiteSelector.right
                color: "violet"

                MouseArea {
                    width: parent.width
                    height: parent.height
                    anchors.fill: parent

                    onClicked: {
                        window.setColor("violet")
                    }
                }
            }

            Rectangle {
                id: lab1BlueSelector
                width: parent.width / 3
                height: parent. height / 2
                anchors.bottom: parent.bottom
                anchors.left: parent.left
                color: "blue"

                MouseArea {
                    width: parent.width
                    height: parent.height
                    anchors.fill: parent

                    onClicked: {
                        window.setColor("blue")
                    }
                }
            }

            Rectangle {
                id: lab1YellowSelector
                width: parent.width / 3
                height: parent. height / 2
                anchors.bottom: parent.bottom
                anchors.left: lab1BlueSelector.right
                color: "yellow"
                MouseArea {
                    width: parent.width
                    height: parent.height
                    anchors.fill: parent

                    onClicked: {
                        window.setColor("yellow")
                    }
                }
            }

            Rectangle {
                id: lab1RedSelector
                width: parent.width / 3
                height: parent. height / 2
                anchors.bottom: parent.bottom
                anchors.left: lab1YellowSelector.right
                color: "red"
                MouseArea {
                    width: parent.width
                    height: parent.height
                    anchors.fill: parent

                    onClicked: {
                        window.setColor("red")
                    }
                }
            }
        }
    }

    Rectangle {
        id: lab1SecondaryColorSelector
        width: parent.width / 3
        height: parent.height / 5
        anchors.top: lab1Labels.bottom
        anchors.right: parent.right
        color: "grey"

        Item {
            id:lab1SecondaryColorSelectorContainer
            width: parent.width - 10
            height: parent.height - 10
            anchors.centerIn: parent

            Rectangle {
                id: lab1SecondaryBlackSelector
                width: parent.width / 3
                height: parent. height / 2
                anchors.top: parent.top
                anchors.left: parent.left
                color: "black"

                MouseArea {
                    width: parent.width
                    height: parent.height
                    anchors.fill: parent

                    onClicked: {
                        window.setSecondaryColor("black")
                    }
                }
            }

            Rectangle {
                id: lab1SecondaryWhiteSelector
                width: parent.width / 3
                height: parent. height / 2
                anchors.top: parent.top
                anchors.left: lab1SecondaryBlackSelector.right
                color: "white"
                MouseArea {
                    width: parent.width
                    height: parent.height
                    anchors.fill: parent

                    onClicked: {
                        window.setSecondaryColor("white")
                    }
                }
            }

            Rectangle {
                id: lab1SecondaryVioletSelector
                width: parent.width / 3
                height: parent. height / 2
                anchors.top: parent.top
                anchors.left: lab1SecondaryWhiteSelector.right
                color: "violet"

                MouseArea {
                    width: parent.width
                    height: parent.height
                    anchors.fill: parent

                    onClicked: {
                        window.setSecondaryColor("violet")
                    }
                }
            }

            Rectangle {
                id: lab1SecondaryBlueSelector
                width: parent.width / 3
                height: parent. height / 2
                anchors.bottom: parent.bottom
                anchors.left: parent.left
                color: "blue"

                MouseArea {
                    width: parent.width
                    height: parent.height
                    anchors.fill: parent

                    onClicked: {
                        window.setSecondaryColor("blue")
                    }
                }
            }

            Rectangle {
                id: lab1SecondaryYellowSelector
                width: parent.width / 3
                height: parent. height / 2
                anchors.bottom: parent.bottom
                anchors.left: lab1SecondaryBlueSelector.right
                color: "yellow"
                MouseArea {
                    width: parent.width
                    height: parent.height
                    anchors.fill: parent

                    onClicked: {
                        window.setSecondaryColor("yellow")
                    }
                }
            }

            Rectangle {
                id: lab1SecondaryRedSelector
                width: parent.width / 3
                height: parent. height / 2
                anchors.bottom: parent.bottom
                anchors.left: lab1SecondaryYellowSelector.right
                color: "red"
                MouseArea {
                    width: parent.width
                    height: parent.height
                    anchors.fill: parent

                    onClicked: {
                        window.setSecondaryColor("red")
                    }
                }
            }
        }
    }

    CustomButton {
        width: parent.width / 3
        height: parent.height / 10
        anchors.left: lab1ColorSelector.right
        anchors.top: lab1PropDisplay.bottom
        _color: window.selectedColor
        _secondColor: window.selectedSecondColor
        _label: "Update DMESG"
        onClicked: {
            systemScripts.command = "dmesg"
            systemScripts.invoke()
            lab1DmesgViewer._text = systemScripts.result;
        }
    }

    CustomScrollView {
        id: lab1DmesgViewer
        width: parent.width
        height: parent.height - parent.height / 5 - 100
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        _color: window.selectedColor
        _secondColor: window.selectedSecondColor
        _text: ""

    }
}
