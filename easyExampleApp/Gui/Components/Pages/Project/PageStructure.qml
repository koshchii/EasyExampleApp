// SPDX-FileCopyrightText: 2023 EasyExample contributors
// SPDX-License-Identifier: BSD-3-Clause
// © 2023 Contributors to the EasyExample project <https://github.com/EasyScience/EasyExampleApp>

import QtQuick
import QtQuick.Controls

import easyApp.Gui.Style as EaStyle
import easyApp.Gui.Globals as EaGlobals
import easyApp.Gui.Elements as EaElements
import easyApp.Gui.Components as EaComponents

import Gui.Globals as ExGlobals
import Gui.Components as ExComponents

EaComponents.ContentPage {
    defaultInfo: ExGlobals.Proxies.mainProxy.project.projectCreated ?
                     "" :
                     qsTr("No Project Created/Opened")

    mainView: EaComponents.MainContent {
        tabs: [
            EaElements.TabButton { text: qsTr("Description") }
        ]

        items: [
            Loader { source: 'MainContent/DescriptionTab.qml' }
        ]
    }

    sideBar: EaComponents.SideBar {
        tabs: [
            EaElements.TabButton { text: qsTr("Basic controls") },
            EaElements.TabButton { text: qsTr("Advanced controls") }
        ]

        items: [
            Loader { source: 'SideBarBasic.qml' },
            Loader { source: 'SideBarAdvanced.qml' }
        ]

        continueButton.text: ExGlobals.Proxies.mainProxy.project.projectCreated ?
                                 qsTr("Continue") :
                                 qsTr("Continue without project")

        continueButton.onClicked: {
            ExGlobals.Variables.modelPageEnabled = true
            ExGlobals.References.modelAppbarButton.toggle()
        }
    }

    Component.onCompleted: print("Project page loaded:", this)
    Component.onDestruction: print("Project page destroyed:", this)
}
