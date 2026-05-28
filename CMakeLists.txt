cmake_minimum_required(VERSION 3.16)
project(MessengerApp VERSION 1.0.0)

find_package(Qt6 REQUIRED COMPONENTS Core Quick)

qt_standard_project_setup()

qt_add_executable(messenger main.cpp)

qt_add_qml_module(messenger
    URI com.messenger.app
    VERSION 1.0
    QML_FILES
        qml/Main.qml
        qml/pages/LoginPage.qml
        qml/pages/RegisterPage.qml
)

target_link_libraries(messenger PRIVATE Qt6::Core Qt6::Quick)