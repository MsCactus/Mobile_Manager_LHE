*** Settings ***
Library             DataDriver    ../../resources/Data.xlsx    sheet_name=InvalidAccount
Resource            ../../resources/resources_common/resources_common.robot

Test Setup          Open an Application
...                     ${appium_server}
...                     ${platform_name}
...                     ${automation_name}
...                     ${platform_version}
...                     ${device_name}
...                     ${udid}
...                     ${app_package}
...                     ${app_activity}
...                     ${no_reset}
Test Teardown       Close the application
Test Template       Input invalid username and password


*** Test Cases ***
Verify login fails    ${username}    ${password}    ${error_msg}    ${note}


*** Keywords ***
Input invalid username and password
    [Arguments]    ${username}    ${password}    ${error_msg}    ${note}
    Click on element on the screen    ${txtbox_Account}
    Input text into element    ${txtbox_Account}    ${username}
    Sleep    10s
    Click on element on the screen    ${txtbox_Password}
    Input text into element    ${txtbox_Password}    ${password}
    Sleep    10s
    Click on element on the screen    ${btn_Login}
    Wait until element is visibled on the screen    //android.view.View[@content-desc="Thông báo"]
    Wait until element is visibled on the screen    //android.view.View[@content-desc="Vui lòng đợi"]
    Wait Until Page Does Not Contain Element    //android.view.View[@content-desc="Vui lòng đợi"]    15s
    Wait until element is visibled on the screen
    ...    //android.view.View[@content-desc="Thông báo"]/preceding-sibling::android.widget.ImageView
    Wait until element is visibled on the screen    //android.view.View[@content-desc="Đăng nhập thất bại"]
    Page Should Contain Text    ${error_msg}
    Log    ${note}
