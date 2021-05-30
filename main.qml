import QtQuick 2.12
import QtQuick.Controls 2.5

ApplicationWindow {
    id: window
    width: 750 // Szerokość
    height: 1334 // Wysokość
    visible: true
    title: "Pomocnik Informatyka"; // Tytuł
    color: "#566159";

    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex

        Page1Form { // Pierwszy widok ( RGB )
        }

        Page2Form { // Drugi widok ( HEX )
        }
    }

    footer: TabBar { // Pasek na dole
        id: tabBar
        currentIndex: swipeView.currentIndex

        TabButton { // Pierwszy przcisk na dole
            text: "RGB";
        }
        TabButton { // Drugi przcisk na dole
            text: "HEX";
        }
    }
}
