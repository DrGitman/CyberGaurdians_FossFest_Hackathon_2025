import QtQuick 2.15
import QtQuick.Controls 2.15

// Main Dashboard Page
Page {
    title: "Ubuntu Touch Banking"

    // Define the layout
    Rectangle {
        anchors.fill: parent
        color: "#f4f4f4"

        Column {
            anchors.centerIn: parent
            spacing: 20

            Text {
                text: "Welcome to Ubuntu Banking"
                font.pixelSize: 20
                color: "black"
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Text {
                text: "Account Balance"
                font.pixelSize: 20
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Text {
                text: "$1,234.56"
                font.pixelSize: 40
                color: "green"
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Button {
                text: "Check Balance"
                width: parent.width * 0.8
                height: 50
                onClicked: {
                    // Navigate to Balance Check Page
                    stackView.push("BalancePage.qml")
                }
                background: Rectangle {
                    radius: 10
                    color: "#4CAF50"
                }
                font.bold: true
            }

            Button {
                text: "Transfer Money"
                width: parent.width * 0.8
                height: 50
                onClicked: {
                    // Navigate to Transfer Money Page
                    stackView.push("TransferPage.qml")
                }
                background: Rectangle {
                    radius: 10
                    color: "#4CAF50"
                }
                font.bold: true
            }

            Button {
                text: "Transaction History"
                width: parent.width * 0.8
                height: 50
                onClicked: {
                    // Navigate to Transaction History Page
                    stackView.push("HistoryPage.qml")
                }
                background: Rectangle {
                    radius: 10
                    color: "#4CAF50"
                }
                font.bold: true
            }
        }
    }
}
