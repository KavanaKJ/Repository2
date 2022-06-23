import QtQuick 2.13
import QtQuick.Window 2.13
import QtQml.Models 2.15
Window {
    id:w1
    width: 480
    height: 480
    visible: true
    color: "black"
    title: qsTr("Hello World")
    ListView{
        id:list1
        width:50
        height: w1.width
        spacing: 1.5
        model: 9
        delegate: Tiles{}

    }
    Rectangle {
        id:prect
        width: parent.width / 3
        height: parent.height/2.85
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 20
        anchors.left: parent.left
        anchors.leftMargin: parent.width/5
        color: "#aaff0011"
        Grid{
            id:_grid
            height: prect.height
            width: prect.width
            columns: 3
            rows: 3
            Repeater{
                model: 9
                anchors.fill: parent
                delegate:  DropArea {
                    height: w1.height/8.5
                    width:w1.width/9
                    id: dropArea
                }
            }
        }
    }
}

