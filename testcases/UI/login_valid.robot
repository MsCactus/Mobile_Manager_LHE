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


*** Variables ***
${error}    Bạn cần hoàn thiện trường thông tin này


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
    Wait until element is visibled on the screen    ${icon_Search}    # Verify hide password icon
    Verify if element is enabled on the screen    ${ckbox_Save}
    Verify if element is displayed on the screen    ${btn_ForgetPassword}
    Verify if element is displayed on the screen    ${btn_Login}

TC2: Valid login without saving account
    [Tags]    login_01
    Input valid username and password
    Sleep    5s
    Click on element on the screen    ${btn_Login}
    Login and swipe to context    ${icon_Personal}
    Click on element on the screen    ${btn_LogOut}
    Sleep    5s
    Verify if account and password is not saved
    Element Attribute Should Match    ${ckbox_Save}    checked    false
    ### vẫn lưu mật khẩu và tài khoản dù ko check vào lưu tài khoản

TC4: Valid login with saving account
    [Tags]    login_02
    Input valid username and password
    Click on element on the screen    ${ckbox_Save}
    Sleep    5s
    Click on element on the screen    ${btn_Login}
    Login and swipe to context    ${icon_Personal}
    Click on element on the screen    ${btn_LogOut}
    Sleep    5s
    # Check chức năng Nhớ mật khẩu khi click vào checkbox Nhớ mật khẩu
    Verify if account and password is saved
    Element Attribute Should Match    ${ckbox_Save}    checked    true
    Sleep    5s

TC5: Input blank username and password
    Click on element on the screen    ${txtbox_Account}
    Input text into element    ${txtbox_Account}    ${EMPTY}
    Sleep    10s
    Click on element on the screen    ${txtbox_Password}
    Input text into element    ${txtbox_Password}    ${EMPTY}
    Sleep    10s
    Click on element on the screen    ${btn_Login}
    Page Should Contain Text    ${error}
