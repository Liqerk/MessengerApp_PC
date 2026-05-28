import QtQuick 6.0
import QtQuick.Controls 6.0
import QtQuick.Layouts 6.0
import "pages" as Pages

ApplicationWindow {
    visible: true
    width: 400
    height: 600
    title: "Messenger"

    property string currentPage: "login"

    StackLayout {
        anchors.fill: parent
        currentIndex: currentPage === "login" ? 0 : 1

        Pages.LoginPage {
            onLoginRequested: (login, password) => {
                console.log("Login:", login, password)
            }
            onGoToRegister: currentPage = "register"
        }

        Pages.RegisterPage {
            onRegisterRequested: (login, email, password) => {
                console.log("Register:", login, email, password)
            }
            onGoToLogin: currentPage = "login"
        }
    }
}