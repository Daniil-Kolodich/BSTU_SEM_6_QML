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
                lab4InfoViewer.text = "
1.Используемая технология: 3LCD
2. Способы подключения: HDMI, VGA, Video, USB Display,
    USB, LAN, Wi-Fi.
3. Что можно отображать: Экран телефона или компьютера,
    Фотографии, Видео(.avi), PDF, Web pages, Камеру и др.";
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
                lab4InfoViewer.text = "
1. Произвести внутренюю(аппаратную) коммутацию необходимых сигналов;
2. Произвести внутреннюю(программную) коммутацию сигналов порта
    с помощью регистров конфигурирования выводов;
3. Произвести программирование последовательного порта;
4. Записать в исходную ячейку(4100h) передаваемого число;
5. Выполнить программу передачи байта;
6. Убедиться, что переданный байт находиться в ячейке 4200h;"
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
                lab4InfoViewer.text = "https://github.com/Daniil-Kolodich"
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
            text: "Press any button to get more info..."
            font.family: "arial"
            font.pointSize: 20
            font.weight: Font.ExtraBold
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
        }

    }

}
