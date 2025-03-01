import QtQuick 2.15
import QtQuick.Controls 2.15

Page {
    title: "Transaction History"

    Rectangle {
        anchors.fill: parent
        color: "#f4f4f4"

        Column {
            anchors.centerIn: parent
            spacing: 20

            Text {
                text: "Transaction History"
                font.pixelSize: 24
                color: "black"
                anchors.horizontalCenter: parent.horizontalCenter
            }

            ListView {
                width: parent.width * 0.8
                height: 300
                model: ListModel {
                    ListElement { date: "2025-03-01"; description: "Deposit"; amount: "$500.00" }
                    ListElement { date: "2025-02-28"; description: "Transfer Out"; amount: "$200.00" }
                    ListElement { date: "2025-02-25"; description: "Payment"; amount: "$100.00" }
                }

                delegate: Item {
                    width: parent.width
                    height: 40
                    Rectangle {
                        width: parent.width
                        height: 40
                        color: "#FFFFFF"
                        border.color: "#BDBDBD"
                        radius: 5
                        Text {
                            anchors.centerIn: parent
                            text: model.date + " - " + model.description + " - " + model.amount
                            font.pixelSize: 16
                            color: "black"
                        }
                    }
                }
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
