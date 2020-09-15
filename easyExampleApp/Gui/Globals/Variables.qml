pragma Singleton

import QtQuick 2.13

QtObject {
    property var proxy: _pyQmlProxyObj !== null ? _pyQmlProxyObj : {
                                                      "calculatorList": ["calculator1"],
                                                      "calculatorIndex": 0,
                                                      "minimizerList": ["minimizer1"],
                                                      "minimizerIndex": 0,
                                                      "amplitude": 0,
                                                      "period": 0,
                                                      "xShift": 0,
                                                      "yShift": 0,
                                                      "statusModelAsXml": ""
                                                  }

    // Debug mode
    property bool isDebugMode: false

    // Initial application components accessibility
    property bool homePageEnabled: isDebugMode ? true : true
    property bool projectPageEnabled: isDebugMode ? true : false
    property bool samplePageEnabled: isDebugMode ? true : false
    property bool experimentPageEnabled: isDebugMode ? true : false
    property bool analysisPageEnabled: isDebugMode ? true : false
    property bool summaryPageEnabled: isDebugMode ? true : false

    // Workflow states
    property bool projectCreated: false
    property bool sampleLoaded: false
    property bool experimentLoaded: false

    // //////////////////////////
    // References to GUI elements
    // //////////////////////////

    // Application bar tab buttons
    property var homeTabButton
    property var projectTabButton
    property var sampleTabButton
    property var experimentTabButton
    property var analysisTabButton
    property var summaryTabButton

    // Application bar tool buttons
    property var preferencesButton

    // Main content and sidebar buttons
    property var startButton
    property var createProjectButton
    property var addNewSampleButton
    property var generateMeasuredDataButton
    property var startFittingButton

    // Sidebar group boxes
    property var sampleParametersGroup

    // Sidebar text inputs
    property var amplitudeTextInput
    property var periodTextInput
    property var xShiftTextInput
    property var yShiftTextInput

    // Comboboxes
    property var themeSelector
}
