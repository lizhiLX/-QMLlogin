import QtQuick 2.15
import QtQuick.Window 2.15

Window
{
    width: 500
    height: 600
    visible: true
    //flags: Qt.FramelessWindowHint
    title: qsTr("Hello World")
    Image
    {
        anchors.fill: parent
        id: name
        source: "qrc:/image/a.jpg"
        fillMode: Image.PreserveAspectCrop
    }
    Rectangle
    {
        radius: 50
        color: "#ce2f3d3c"
        anchors.fill: parent
        anchors.bottomMargin: 50
        anchors.topMargin: 50
        anchors.leftMargin: 50
        anchors.rightMargin: 50
        MEdit
        {
            text: "玲依01"
            x: 95
            y: 99
            pointSize: 17

        }
        MEdit
        {
            echoMode: TextInput.Password
            pointSize: 11
            x:95
            y:155
        }

        Text {
            id: text1
            x: 48
            y: 127
            width: 41
            height: 22
            color: "#ff00c2"
            text: qsTr("账号:")
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignBottom
            font.bold: true
            font.pointSize: 13
        }

        Text {
            id: text2
            x: 48
            y: 183
            width: 41
            height: 22
            color: "#ff00c2"
            text: qsTr("密码:")
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignBottom
            font.bold: true
            font.pointSize: 13
        }
        MButton
        {
            x: 51
            y: 306
            width: 299
            height: 50
            text: "登       陆"
        }
    }

}
