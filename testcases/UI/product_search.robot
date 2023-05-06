# *** Settings ***
# Library    AppiumLibrary
# Resource    ../../resources/resources_common/resources_common.robot

# Test Setup    Open an Application
# ...    ${appium_server}
# ...    ${platform_name}
# ...    ${automation_name}
# ...    ${platform_version}
# ...    ${device_name}
# ...    ${udid}
# ...    ${app_package}
# ...    ${app_activity}
# ...    ${no_reset}
# Test Teardown    Close the application

# *** Test Cases ***
# TC1: Search valid items in warehouse
#    [Tags]    search_valid
#    Login and swipe to context    ${icon_Product}
#    # Input product and press Enter
#    Sleep    10s
#    Wait until element is visibled on the screen    ${txtbox_Search}
#    Input Text    ${txtbox_Search}    Thạch rau câu
#    Press Keycode    66

# TC2: Add new product
#    [Tags]    add_valid
#    Login and swipe to context    ${icon_Product}
#    Sleep    10s
#    Click on element on the screen    ${btn_AddProduct}
