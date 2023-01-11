import QtQuick 2.15

Item
{
    property alias echoMode: textInput.echoMode
    property alias pointSize:textInput.font.pointSize
    property alias text: textInput.text
    width: 250
    height: 50    
    Rectangle
    {
        TextInput
        {
            id: textInput
            color: "#ff00c2"
            text: qsTr("Text Input")
            anchors.fill: parent
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignBottom
            wrapMode: Text.WordWrap
            font.pointSize: 13
            selectedTextColor: "#00daff"
            font.weight: Font.Normal
            selectionColor: "#ff00f7"
            onFocusChanged:
            {
                if(focus)
                {
                    recb.state = "pink"
                }
                else
                {
                    recb.state = "blue"
                }
            }
        }
        color: "#00000000"
        border.color: "#00000000"
        anchors.fill: parent
        Rectangle
        {
            id:recb
            color:  "#00b2ff"
            height: 2
            width: parent.width
            anchors.bottom: parent.bottom
            states:
            [
                State
                {
                    name: "blue"
                    PropertyChanges
                    {
                        target: recb
                        color:  "#00b2ff"
                    }
                },
                State {
                    name: "pink"
                    PropertyChanges
                    {
                        target: recb
                        color:"#ff00c2"
                    }
                }
            ]
            Component.onCompleted:
            {
                state = 'blue'
            }
        }
    }
}
