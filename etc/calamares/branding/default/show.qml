/* === This file is part of Calamares - <https://calamares.io> ===
 *
 *   SPDX-FileCopyrightText: 2015 Teo Mrnjavac <teo@kde.org>
 *   SPDX-FileCopyrightText: 2018 Adriaan de Groot <groot@kde.org>
 *   SPDX-License-Identifier: GPL-3.0-or-later
 *
 *   Calamares is Free Software: see the License-Identifier above.
 *
 */

import QtQuick 2.15;
import calamares.slideshow 1.0;

Presentation
{
    id: presentation

    function nextSlide() {
        console.log("QML Component (default slideshow) Next slide");
        presentation.goToNextSlide();
    }

    Timer {
        id: advanceTimer
        interval: 10000
        running: presentation.activatedInCalamares
        repeat: true
        onTriggered: nextSlide()
    }

Slide {

    anchors.fill: parent
    anchors.verticalCenterOffset: 0

    Image {
        id: background1
        source: "1-welcometo.png"
        width: parent.width; height: parent.height
    horizontalAlignment: Image.AlignCenter
        verticalAlignment: Image.AlignTop
        fillMode: Image.Stretch
        anchors.fill: parent
        }

    Text {
        anchors.horizontalCenter: background1.horizontalCenter
        anchors.top: background1.bottom
        text: "Welcome to"
        wrapMode: Text.WordWrap
        width: presentation.width
        horizontalAlignment: Text.Center
        }
    }


    Slide {

    anchors.fill: parent
    anchors.verticalCenterOffset: 0

    Image {
        id: first
        source: "01-welcome.svg"
        width: parent.width; height: parent.height
    horizontalAlignment: Image.AlignCenter
        verticalAlignment: Image.AlignTop
        fillMode: Image.Stretch
        anchors.fill: parent
        }

    Text {
        anchors.horizontalCenter: first.horizontalCenter
        anchors.top: first.bottom
        text: "Overview"
        wrapMode: Text.WordWrap
        width: presentation.width
        horizontalAlignment: Text.Center
        }
    }

    
    Slide {

    anchors.fill: parent
    anchors.verticalCenterOffset: 0

    Image {
        id: second
        source: "02-arch-linux.svg"
        width: parent.width; height: parent.height
        verticalAlignment: Image.AlignTop
        fillMode: Image.Stretch
        anchors.fill: parent
    	}

    Text {
        anchors.horizontalCenter: second.horizontalCenter
        anchors.top: second.bottom
        text: "Built on Arch Linux"
        wrapMode: Text.WordWrap
        width: presentation.width
        horizontalAlignment: Text.Center
    	}
    }

    Slide {

    anchors.fill: parent
    anchors.verticalCenterOffset: 0

    Image {
        id: third
        source: "03-kde-plasma.svg"
        width: parent.width; height: parent.height
        verticalAlignment: Image.AlignTop
        fillMode: Image.Stretch
        anchors.fill: parent
        }

    Text {
        anchors.horizontalCenter: third.horizontalCenter
        anchors.top: third.bottom
        text: "KDE Plasma"
        wrapMode: Text.WordWrap
        width: presentation.width
        horizontalAlignment: Text.Center
        }
    }

    Slide {

    anchors.fill: parent
    anchors.verticalCenterOffset: 0

    Image {
        id: fourth
        source: "04-vivaldi.svg"
        width: parent.width; height: parent.height
        verticalAlignment: Image.AlignTop
        fillMode: Image.Stretch
        anchors.fill: parent
        }

    Text {
        anchors.horizontalCenter: fourth.horizontalCenter
        anchors.top: fourth.bottom
        text: "Vivaldi"
        wrapMode: Text.WordWrap
        width: presentation.width
        horizontalAlignment: Text.Center
        }
    }

    Slide {

    anchors.fill: parent
    anchors.verticalCenterOffset: 0

    Image {
        id: fifth
        source: "05-libreoffice.svg"
        width: parent.width; height: parent.height
        verticalAlignment: Image.AlignTop
        fillMode: Image.Stretch
        anchors.fill: parent
        }

    Text {
        anchors.horizontalCenter: fifth.horizontalCenter
        anchors.top: fifth.bottom
        text: "Libre Office"
        wrapMode: Text.WordWrap
        width: presentation.width
        horizontalAlignment: Text.Center
        }
    }

    Slide {

    anchors.fill: parent
    anchors.verticalCenterOffset: 0

    Image {
        id: sixth
        source: "06-strawberry.svg"
        width: parent.width; height: parent.height
        verticalAlignment: Image.AlignTop
        fillMode: Image.Stretch
        anchors.fill: parent
        }

    Text {
        anchors.horizontalCenter: sixth.horizontalCenter
        anchors.top: sixth.bottom
        text: "Strawberry Music Player"
        wrapMode: Text.WordWrap
        width: presentation.width
        horizontalAlignment: Text.Center
        }
    }

    Slide {

    anchors.fill: parent
    anchors.verticalCenterOffset: 0

    Image {
        id: seventh
        source: "07-variety.svg"
        width: parent.width; height: parent.height
        verticalAlignment: Image.AlignTop
        fillMode: Image.Stretch
        anchors.fill: parent
        }

    Text {
        anchors.horizontalCenter: seventh.horizontalCenter
        anchors.top: seventh.bottom
        text: "Variety Wallpaper Changer"
        wrapMode: Text.WordWrap
        width: presentation.width
        horizontalAlignment: Text.Center
        }
    }

    Slide {

    anchors.fill: parent
    anchors.verticalCenterOffset: 0

    Image {
        id: eighth
        source: "08-alacritty.svg"
        width: parent.width; height: parent.height
        verticalAlignment: Image.AlignTop
        fillMode: Image.Stretch
        anchors.fill: parent
        }

    Text {
        anchors.horizontalCenter: eighth.horizontalCenter
        anchors.top: eighth.bottom
        text: "Alacritty terminal"
        wrapMode: Text.WordWrap
        width: presentation.width
        horizontalAlignment: Text.Center
        }
    }

    Slide {

    anchors.fill: parent
    anchors.verticalCenterOffset: 0

    Image {
        id: ninth
        source: "09-sublime-text.svg"
        width: parent.width; height: parent.height
        verticalAlignment: Image.AlignTop
        fillMode: Image.Stretch
        anchors.fill: parent
        }

    Text {
        anchors.horizontalCenter: ninth.horizontalCenter
        anchors.top: ninth.bottom
        text: "Text Editor"
        wrapMode: Text.WordWrap
        width: presentation.width
        horizontalAlignment: Text.Center
        }
    }


    // When this slideshow is loaded as a V1 slideshow, only
    // activatedInCalamares is set, which starts the timer (see above).
    //
    // In V2, also the onActivate() and onLeave() methods are called.
    // These example functions log a message (and re-start the slides
    // from the first).
    function onActivate() {
        console.log("QML Component (default slideshow) activated");
        presentation.currentSlide = 0;
    }

    function onLeave() {
        console.log("QML Component (default slideshow) deactivated");
    }

}
