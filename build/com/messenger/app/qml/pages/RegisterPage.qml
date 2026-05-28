import QtQuick 6.0
import QtQuick.Controls 6.0
import QtQuick.Layouts 6.0

Rectangle {
    id: root
    color: "#FFFFFF"

    property alias login: loginField.text
    property alias email: emailField.text
    property alias password: passwordField.text

    signal registerRequested(string login, string email, string password)
    signal goToLogin()

    ColumnLayout {
        anchors.centerIn: parent
        width: parent.width - 64
        spacing: 0

        Text {
            text: "Регистрация"
            font.pixelSize: 28
            font.bold: true
            color: "#1A1A1A"
            Layout.alignment: Qt.AlignHCenter
            Layout.bottomMargin: 32
        }

        TextField {
            id: loginField
            Layout.fillWidth: true
            Layout.bottomMargin: 12
            placeholderText: "Логин"
            placeholderTextColor: "#BCBCBC"
            color: "#1A1A1A"
            font.pixelSize: 16
            padding: 14

            background: Rectangle {
                color: "transparent"
                border.color: "#E5E5EA"
                border.width: 1
                radius: 8
            }
        }

        TextField {
            id: emailField
            Layout.fillWidth: true
            Layout.bottomMargin: 12
            placeholderText: "Email"
            placeholderTextColor: "#BCBCBC"
            color: "#1A1A1A"
            font.pixelSize: 16
            padding: 14

            background: Rectangle {
                color: "transparent"
                border.color: "#E5E5EA"
                border.width: 1
                radius: 8
            }
        }

        TextField {
            id: passwordField
            Layout.fillWidth: true
            Layout.bottomMargin: 24
            placeholderText: "Пароль"
            placeholderTextColor: "#BCBCBC"
            color: "#1A1A1A"
            font.pixelSize: 16
            padding: 14
            echoMode: TextField.Password

            background: Rectangle {
                color: "transparent"
                border.color: "#E5E5EA"
                border.width: 1
                radius: 8
            }
        }

        Button {
            text: "Зарегистрироваться"
            Layout.fillWidth: true
            Layout.bottomMargin: 16

            onClicked: root.registerRequested(loginField.text, emailField.text, passwordField.text)

            background: Rectangle {
                color: "#2196F3"
                radius: 4
            }

            contentItem: Text {
                text: parent.text
                color: "white"
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }

        Text {
            text: "Уже есть аккаунт? Войти"
            color: "#2196F3"
            font.pixelSize: 14
            Layout.alignment: Qt.AlignHCenter

            MouseArea {
                anchors.fill: parent
                cursorShape: Qt.PointingHandCursor
                onClicked: root.goToLogin()
            }
        }
    }
}