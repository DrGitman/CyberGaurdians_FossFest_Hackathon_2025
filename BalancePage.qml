
import QtQuick 2.15
import QtQuick.Controls 2.15

Page {
    title: "Check Balance"

    Rectangle {
        anchors.fill: parent
        color: "#f4f4f4"

        Column {
            anchors.centerIn: parent
            spacing: 20

            Text {
                text: "Your Balance"
                font.pixelSize: 24
                color: "black"
            }

            Text {
                text: "$1,234.56"
                font.pixelSize: 40
                color: "green"
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Button {
                text: "Deposit Money"
                width: parent.width * 0.8
                height: 50
                onClicked: {
                    console.log("Deposit button clicked!")
                    // Logic for depositing money can go here
                }
                background: Rectangle {
                    radius: 10
                    color: "#4CAF50"
                }
                font.bold: true
            }

            // Withdraw Button
            Button {
                text: "Withdraw Money"
                width: parent.width * 0.8
                height: 50
                onClicked: {
                    console.log("Withdraw button clicked!")
                    // Logic for withdrawing money can go here
                }
                background: Rectangle {
                    radius: 10
                    color: "#FF5722"
                }
                font.bold: true
            }

            Button {
                text: "Back to Dashboard"
                width: parent.width * 0.8
                height: 50
                onClicked: {
                    stackView.pop()
                }
                background: Rectangle {
                    radius: 10
                    color: "#2196F3"
                }
                font.bold: true
            }
        }
    }
}
