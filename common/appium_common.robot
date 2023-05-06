*** Settings ***
Library     AppiumLibrary


*** Keywords ***
### Open Todoist application to given Appium server
Open an Application
    [Arguments]    ${appium_server}
    ...    ${platform_name}
    ...    ${automation_name}
    ...    ${platform_version}
    ...    ${device_name}
    ...    ${udid}
    ...    ${app_package}
    ...    ${app_activity}
    ...    ${no_reset}
    Open Application    ${appium_server}
    ...    platformName=${platform_name}
    ...    automationName=${automation_name}
    ...    platformVersion=${platform_version}
    ...    deviceName=${device_name}
    ...    udid=${udid}
    ...    appPackage=${app_package}
    ...    appActivity=${app_activity}
    ...    noReset=${no_reset}

Close the application
    Run Keyword If Test Failed    Capture Page Screenshot
    Close application
