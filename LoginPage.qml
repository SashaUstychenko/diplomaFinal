import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Page
{
    Rectangle
    {
        anchors.fill: parent
        color: "#d2e5e9"

        Rectangle
        {
            width: parent.width
            height: parent.height*0.5
            bottomLeftRadius: width/2
            bottomRightRadius: width/2
            color: "#293239"

            Text
            {
                id: mainText
                text: qsTr("Login")
                anchors.top: parent.top
                anchors.topMargin: 80
                color: "#ffffff"
                font.pixelSize: 40
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }

        Rectangle
        {
            width: parent.width*0.85
            height: emailTF.height+passwordTF.height + 51
            anchors.centerIn: parent
            radius: 20
            color: "#e3eced"

            Column
            {
                anchors.topMargin: 18
                spacing: 15
                anchors.centerIn: parent
                anchors.fill: parent

                 TextField
                 {

                     id:emailTF
                     anchors.horizontalCenter: parent.horizontalCenter
                     width: parent.width*0.9
                     focus: true
                     placeholderText: qsTr("Email")
                     Layout.fillWidth: true
                     placeholderTextColor: "#2E364E"
                 }


                 TextField
                 {
                     id:passwordTF
                     anchors.horizontalCenter: parent.horizontalCenter
                     width: parent.width*0.9
                     placeholderText: qsTr("Password")
                     echoMode: TextInput.Password
                     Layout.fillWidth: true
                     placeholderTextColor: "#2E364E"
                     inputMethodHints: Qt.ImhNoEditMenu && Qt.ImhHiddenText
                     ToolButton
                     {
                         anchors.right: parent.right
                         anchors.verticalCenter: parent.verticalCenter
                         id: passwordToggle
                         checkable: true
                         text: passwordToggle.checked ? "👁️" : "🙈"
                         onClicked: passwordTF.echoMode = checked ? TextInput.Normal : TextInput.Password

                     }
                }
            }
        }

        Button
        {
            text: "Login"
            width: parent.width*0.8
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 40
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked:
            {
               // stackView.replace("Profile.qml");
            }
            contentItem: Text
            {
                 text: parent.text
                 color: "#ffffff"
                 font.pixelSize: 20  // Задаємо розмір тексту
                 horizontalAlignment: Text.AlignHCenter
                 verticalAlignment: Text.AlignVCenter
             }
            background: Rectangle
            {
                radius: 20
                color: "#293239"

            }
        }
    }
}
