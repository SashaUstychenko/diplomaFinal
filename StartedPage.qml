import QtQuick
import QtQuick.Controls

Page
{
    Rectangle {
        anchors.fill: parent
        color: "#d2e5e9"  // Фон для контрасту

        Rectangle {
            height: parent.height * 0.5
            width: parent.width
            bottomLeftRadius: width/2
            bottomRightRadius: width/2
            color: "#293239"

//   Image
//   {
//       id: img
//       width: 150
//       height: 150
//       source: "qrc:/imgLogo/LogoDiploma/Frame 2@3x.png"
//       fillMode: Image.PreserveAspectFit
//
//       anchors.horizontalCenter: parent.horizontalCenter
//       anchors.top: parent.top
//       anchors.topMargin: 80
//   }
        }


   //  FontLoader
   //  {
   //      id: jockeyFont
   //      source: "qrc:/Font/Font/JockeyOne-Regular.ttf"
   //  }
   //

            Rectangle
            {
                id: startText
                width: Math.min(parent.width * 0.83, 400)
                height: textElement.implicitHeight + 40
                color: "#a1a9db"
                radius: 20
                anchors.centerIn: parent


                Text
                {
                    id: textElement
                    text: "A travel community for explorers, adventurers, and culture seekers!\nConnect with locals, find a place to stay, and share unique experiences worldwide."
                    color: "#ffffff"
                    font.pixelSize: 24
                    anchors.centerIn: parent
                    wrapMode: Text.WordWrap
                  //  font.family: jockeyFont.name
                    horizontalAlignment: Text.AlignHCenter
                    width: parent.width * 0.9
                }
            }


            Column
            {
                width: parent.width

                spacing: 10
                anchors.top: startText.bottom
                anchors.topMargin: 30
                anchors.horizontalCenter: parent.horizontalCenter
            Button
            {
                id: loginBtn

                text: "Login"
                width: parent.width*0.8
                anchors.horizontalCenter: parent.horizontalCenter
                onClicked:
                {
                    stackView.push("LoginLayout.qml")
                }
                contentItem: Text
                {
                     text: parent.text
                     color: "#ffffff"
                    // font.family: jockeyFont.name
                     font.pixelSize: 20  // Задаємо розмір тексту
                     horizontalAlignment: Text.AlignHCenter
                     verticalAlignment: Text.AlignVCenter
                 }
                background: Rectangle
                {
                    topLeftRadius: 20
                    topRightRadius: 20
                    color: "#293239"
                }

            }
            Button
            {
                text: "Register"

                width: parent.width*0.8
                anchors.horizontalCenter: parent.horizontalCenter

                onClicked:
                {
                    stackView.push("RegisterLayout.qml")
                }
                contentItem: Text {
                     text: parent.text
                     color: "#ffffff"
                     font.pixelSize: 20
                   //  font.family: jockeyFont.name
                     horizontalAlignment: Text.AlignHCenter
                     verticalAlignment: Text.AlignVCenter
                     anchors.horizontalCenter: parent.horizontalCenter

                 }
                background: Rectangle
                {
                    bottomLeftRadius: 20
                    bottomRightRadius: 20
                    color: "#293239"

                }
            }
        }
    }


}
