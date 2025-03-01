import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    visible: true
    width: 360
    height: 640
    title: "Ubuntu Touch Banking"

    StackView {
        id: stackView
        anchors.fill: parent

        // Initial Page
        initialItem: Dashboard {}
    }
}
