import QtQuick 2.0
import com.pelagicore.qmldevinfo 0.1;

Item {
    anchors.fill: parent

    Rectangle {
        color: "white"
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        height: grid.height + 20
        width: parent.width

        Item {
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            anchors.margins: 20
            anchors.bottomMargin: 0

            Grid {
                id: grid
                columns: 2
                spacing: 10
                anchors.bottom: parent.bottom

                Text { text: "Version:" }
                Text { text: devinfo.softwareVersion }

                Text { text: "Build:" }
                Text { text: devinfo.buildId }

                Text { text: "IPv4:" }
                Text { text: devinfo.ipAddresses.join("\n") }

                Text { text: "IPv6:" }
                Text { text: devinfo.ip6Addresses.join("\n") }

                Text { text: "DNS:" }
                Text { text: devinfo.nameServer }

                Text { text: "Gateway:" }
                Text { text: devinfo.defaultGateway }
            }
        }

        DevInfo {
            id: devinfo
        }

    }
}