import QtQuick 2.5
import QtQuick.Controls 1.4
import QtGraphicalEffects 1.0
import QtQuick.Controls.Styles 1.4

Rectangle {
    property string _color: "black"
    property string _secondColor: "white"
    property string _text: ""
    width: parent.width
    height: parent.height
    color: _color
    z: -2

    ScrollView {
        width: parent.width
        height: parent.height
        anchors.leftMargin: 10
        Text {
            text: _text
            color: _secondColor
            font.family: "arial"
            font.pointSize: 14
            font.weight: Font.ExtraBold
        }
    }
}

