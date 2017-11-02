import QtQuick 2.4
import QtQuick.Window 2.2

Window {
    visible: true
    id: root
    width: 500
    height: 500

    property bool running: false

    Rectangle {
        id: body
         width: root.width
         height: root.height
         anchors.centerIn: root

        Image {
            id: background
            source: "qrc:///files/images/background.jpg"
            anchors.centerIn: body
            fillMode: Image.PreserveAspectFit
            width: 1350



            RotationAnimation on rotation {
                from: 0
                to: -360
                duration: 6000
                running: root.running
                loops: Animation.Infinite
            }

        }

        Image {
            id: smile
            source: "qrc:///files/images/smile2.png"
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: background
            width: 150
            opacity: 0.5
        }

        MouseArea {
            anchors.fill: background
            onClicked: root.running = true
        }

    }
}
