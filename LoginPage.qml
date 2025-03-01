import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    visible: true
    width: 360
    height: 640
    title: "Banking App"

    // Login Page
    Page {
        title: "Login"

        Column {
            anchors.centerIn: parent
            spacing: 20

            // Username field
            TextField {
                id: usernameField
                placeholderText: "Username"
                width: parent.width * 0.8
                height: 40
            }

            // Password field
            TextField {
                id: passwordField
                placeholderText: "Password"
                width: parent.width * 0.8
                height: 40
            }

            // Login button
            Button {
                text: "Login"
                width: parent.width * 0.8
                height: 50
                onClicked: {
                    // Handle login logic here
                    console.log("Login button clicked")
                }
            }
        }
    }
}
