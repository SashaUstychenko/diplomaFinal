import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Page
{
    Rectangle
    {
        anchors.fill: parent
        color: "#d2e5e9"  // Фон для контрасту

        Rectangle
        {
            width: parent.width
            height: parent.height*0.5
            bottomLeftRadius: width/2
            bottomRightRadius: width/2
            color: "#293239"

      // Image
      // {
      //     id: back
      //     source: "qrc:/imgLogo/logo/arrow_back.png"
      //     width: 24
      //     height: 24
      //     anchors.top: parent.top
      //     anchors.left: parent.left
      //     anchors.topMargin: 15
      //     anchors.leftMargin: 15
      //     MouseArea
      //     {
      //         anchors.fill: parent
      //         onClicked:
      //         {
      //             stackView.pop();
      //         }
      //     }
      // }
            //FontLoader
            //{
             //   id: jockeyFont
              //  source: "qrc:/Font/Font/JockeyOne-Regular.ttf"
            //}
            Text
            {
                id: mainText
                text: qsTr("Register")
                anchors.top: parent.top
                anchors.topMargin: 80
                anchors.horizontalCenter: parent.horizontalCenter
                color: "#ffffff"
                //font.family: jockeyFont.name
                font.pixelSize: 40
            }
        }

        Rectangle
        {
            width: Math.min(parent.width * 0.83, 400)
            height: emailTF.height+passwordTF.height+nameTF.height+phoneTF.height + 81
            anchors.centerIn: parent
            radius: 20
            color: "#ffffff"

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
                    Layout.fillWidth: true
                    placeholderTextColor: "#2E364E"
                    inputMethodHints: Qt.ImhNoEditMenu && Qt.ImhHiddenText
                    echoMode: TextInput.Password
                    ToolButton
                    {
                        anchors.right: parent.right
                        anchors.verticalCenter: parent.verticalCenter
                        id: passwordTggle
                        checkable: true
                        text: passwordToggle.checked ? "👁️" : "🙈"
                        onClicked: passwordTF.echoMode = checked ? TextInput.Normal : TextInput.Password
                    }
                }

                TextField
                {
                    id:nameTF
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: parent.width*0.9
                    focus: true
                    placeholderText: qsTr("Name")
                    Layout.fillWidth: true
                    placeholderTextColor: "#2E364E"
                    onTextChanged: text = text.replace(/[^a-zA-Z]/g, "")
                }

                TextField
                {
                    id:phoneTF
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: parent.width*0.9
                    placeholderText: qsTr("Phone")
                    echoMode: TextField.PasswordEchoOnEdit
                    Layout.fillWidth: true
                    placeholderTextColor: "#2E364E"
                    inputMethodHints: Qt.ImhDialableCharactersOnly
                }
            }
        }

        Button
        {
            text: "Register"
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 40
            width: parent.width*0.8
            anchors.horizontalCenter: parent.horizontalCenter
            contentItem: Text
            {
                 text: parent.text
                 color: "#ffffff"
                 font.pixelSize: 20  // Задаємо розмір тексту
                 horizontalAlignment: Text.AlignHCenter
                 verticalAlignment: Text.AlignVCenter
                 font.family: jockeyFont.name
            }
            background: Rectangle
            {
                radius: 20
                color: "#293239"
            }
        }
    }
}


