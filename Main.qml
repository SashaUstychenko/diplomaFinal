import QtQuick
import QtQuick.Controls

ApplicationWindow
{
    width: 500
    height: 700
    minimumHeight: 700
    minimumWidth: 500
    maximumHeight: 700
    maximumWidth:  500
    visible: true
    title: qsTr("Hello World")


    StackView
    {
          id: stackView
          anchors.fill: parent
<<<<<<< HEAD
          initialItem: "StartedPage.qml"
=======
          initialItem: "RegisterPage.qml"
>>>>>>> origin/register_ui
          pushEnter: Transition
          {
                id: pushEnter
                ParallelAnimation {
                    PropertyAction  { property: "x"; value: pushEnter.ViewTransition.item.pos }
                    NumberAnimation { properties: "y"; from: pushEnter.ViewTransition.item.pos + stackView.offset; to: pushEnter.ViewTransition.item.pos; duration: 400; easing.type: Easing.OutCubic }
                    NumberAnimation { property: "opacity"; from: 0; to: 1; duration: 400; easing.type: Easing.OutCubic }
                }
            }
            popExit: Transition
            {
                id: popExit
                ParallelAnimation
                {
                    PropertyAction  { property: "x"; value: popExit.ViewTransition.item.pos }
                    NumberAnimation { properties: "y"; from: popExit.ViewTransition.item.pos; to: popExit.ViewTransition.item.pos + stackView.offset; duration: 400; easing.type: Easing.OutCubic }
                    NumberAnimation { property: "opacity"; from: 1; to: 0; duration: 400; easing.type: Easing.OutCubic }
                }
            }
      }
}
