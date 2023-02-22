// SPDX-FileCopyrightText: 2023 EasyExample contributors
// SPDX-License-Identifier: BSD-3-Clause
// © 2023 Contributors to the EasyExample project <https://github.com/EasyScience/EasyExampleApp>

import QtQuick

import EasyApp.Gui.Elements as EaElements
import EasyApp.Gui.Components as EaComponents

import Gui.Globals as Globals


EaComponents.SideBarColumn {

    EaElements.GroupBox {
        title: qsTr("Experimental data explorer")
        collapsible: false
        //last: !Globals.Proxies.mainProxy.experiment.isCreated
        last: true

        Loader { source: 'SideBarBasic/ExperimentalDataExplorerGroup.qml' }
    }

}
