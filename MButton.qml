
import QtQuick 2.15
import QtQuick.Controls 2.15

Item
{
    property alias text: text1.text
    Button
    {
        id:button
        anchors.fill: parent
        font.bold: true
        font.pointSize: 13
        background: reca
        Text
        {
            anchors.fill: parent
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.pointSize: 13
            font.bold: true
            id:text1
            color: "#ffffff"
            text: qsTr("text")
        }
        onPressed:
        {
            reca.state = "press"
        }
        onReleased:
        {
            if(hovered)
            {
                reca.state = "hovrel"
            }
            else
            {
                reca.state = "release"
            }
        }
        onHoveredChanged:
        {
            if(hovered)
            {
                reca.state = "hover"
            }
            else
            {
                reca.state = "release"
            }
        }
        Component.onCompleted:
        {
            reca.state = "release"
        }
    }
    Rectangle
    {
        id:reca
        Rectangle
        {

            id:recb
            color: "#ff00c2"
            anchors.fill: parent
            anchors.topMargin: 2
            anchors.bottomMargin: 2
            anchors.leftMargin: 2
            anchors.rightMargin: 2
        }
        states:
        [
            State
            {
                name: "press"
                PropertyChanges
                {
                    target: recb
                    color:"#da19ac"
                }
                PropertyChanges
                {
                    target: reca
                    color:"#00b2ff"
                }
            },
            State
            {
                name: "release"
                PropertyChanges
                {
                    target: recb
                    color:"#ff00c2"

                }
                PropertyChanges
                {
                    target: reca
                    color:"#ffffff"
                }
            },
            State
            {
                name: "hover"
                PropertyChanges
                {
                    target: recb
                    color:"#ff00c2"
                }
                PropertyChanges
                {
                    target: reca
                    color:"#00b2ff"
                }
            },
            State
            {
                name: "hovrel"
                PropertyChanges
                {
                    target: recb
                    color:"#ff00c2"
                }
                PropertyChanges
                {
                    target: reca
                    color:"#00b2ff"
                }
            }

        ]
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
