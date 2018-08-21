import io.qt.examples.backend 1.0
import QtQuick 2.9
import QtQuick.Controls 1.4
import QtQuick.Controls 2.2
import QtQuick.Controls.Material 2.2

ApplicationWindow {

    visible: true
    Material.theme: Material.Dark
    Material.accent: Material.Amber
    Material.background: Material.Dark
    Material.foreground: Material.Dark

    width: 350
    height: 480
    minimumWidth: 350
	minimumHeight: 480
	maximumWidth: 350
    maximumHeight: 480
    color: "#191919"
	title: "NT Carrot Bot"

    BackEnd{
        id: backend
    }
	
    Label {
        id: label1
        x: 15
        y: 445
        width: 247
        height: 13
        text: qsTr("You can contact me over Discord: Blackout#9914")
    }

    TabView
    {
        width: 345
        height: 419
        Tab
        {
            title: "Automation"
            Rectangle
            {
                color: "#19191f"

                Image {
                    id: image
                    width: 345
                    height: 419
                    source: "Resources/CARSN-2.jpg"
                }

                GroupBox {
                    id: groupBox
                    x: 5
                    y: 5
                    width: 200
                    height: 200
                    title: qsTr("Carrot Bot")

                    SwitchDelegate {
                        id: switchDelegate
                        x: 95
                        y: -6
                        width: 44
                        height: 20
                        display: AbstractButton.IconOnly
                        highlighted: false
						checked: backend.gswitch
						onClicked: backend.gswitch = checked
                    }

                    Label {
                        id: label
                        x: -5
                        y: -5
                        color: "darkorange"
                        text: qsTr("Collect Carrots")
                    }

                    
                }

            }
        }
    }
	ProgressBar {
                        id: progressBar
                        x: 0
                        y: 422
                        width: 350
                        height: 15
                        // property color property0: "label.color"
                        to: 100
                        wheelEnabled: false
                        spacing: 0
                        value: backend.pval
                        onValueChanged: backend.pval = value
                    }
}

/*##^## Designer {
    D{i:0;height:399;title__AT__NodeInstance:"Automation";width:638}
}
 ##^##*/
