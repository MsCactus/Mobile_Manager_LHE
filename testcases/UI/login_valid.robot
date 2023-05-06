*** Settings ***
Library             AppiumLibrary
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


*** Test Cases ***
TC1: Verify element on the screen
    [Tags]    tc_verify_01
    Verify if text is displayed on the screen    Đăng nhập
    Verify if text is displayed on the screen    Tên đăng nhập
    Verify if text is displayed on the screen    Mật khẩu
    Verify if text is displayed on the screen    Lưu tài khoản
    Wait Until Page Contains Element    //android.widget.ImageView    # Verify if picture is displayed on the screen
    Verify if element is enabled on the screen    ${txtbox_Account}
    Verify if element is enabled on the screen    ${txtbox_Password}
    Wait until element is visibled on the screen    //android.widget.Button    # Verify hide password icon
    Verify if element is enabled on the screen    ${ckbox_Save}
    Verify if element is displayed on the screen    ${btn_ForgetPassword}
    Verify if element is displayed on the screen    ${btn_Login}

    

TC2: Valid login without saving account
    [Tags]    tc_login_02
    Input valid username and password
    Login and swipe to context    ${icon_Personal}
    Click on element on the screen    ${btn_LogOut}
    Sleep    5s

TC4: Valid login with saving account
    [Tags]    tc_login_04
    Login and swipe to context    ${icon_Personal}
    Click on element on the screen    ${btn_LogOut}
    Sleep    5s
    Verify if account and password is saved
