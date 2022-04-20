import QtQuick 2.5
import QtQuick.Controls 1.4
import QtGraphicalEffects 1.0
import QtQuick.Controls.Styles 1.4

Button {
    property string _color: "black"
    property string _secondColor: "white"
    property string _label: ""
    style: ButtonStyle{
        background: Rectangle{
            id: _backgroundRect
            color: _color
            border.width: 2
            border.color: _secondColor
            state: control.pressed ? "s_active" : control.hovered ? "s_hover" : ""
            states:[
                State {
                    name: "s_hover"
                    PropertyChanges {
                        target: _backgroundRect;
                        color: Qt.lighter(_color,1.15)
                    }
                },
                State {
                    name: "s_active"
                    PropertyChanges {
                        target: _backgroundRect;
                        border.width: 5
                        border.color: Qt.darker(_secondColor,1.5)
                        color: Qt.darker(_color,1.6)
                    }
                }
            ]
            transitions: [
                Transition {
                    to: "s_hover"
                    ColorAnimation { target: _backgroundRect; duration: 250}
                },
                Transition {
                    to: "s_active"
                    ColorAnimation { target: _backgroundRect; duration: 350}
                },
                Transition {
                    to: ""
                    ColorAnimation { target: _backgroundRect; duration: 1000}
                }
            ]
        }

        label:Text{
            font.family: "arial"
            font.pointSize: 20
            font.weight: Font.ExtraBold
            text: _label
            color: _secondColor
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
        }
    }
}

