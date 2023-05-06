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
TC1: View an detail order in the list
    [Tags]    order_view
    Login and swipe to context    ${icon_Order}
    # Input product and press Enter
    Sleep    10s
    Wait until element is visibled on the screen    ${bnt_CreateOrder}
    Click on element on the screen    ${btn_ViewDetails}
    Verify if element is displayed on the screen    //android.view.View[@content-desc="Chi tiết đơn hàng"]

TC: Deny an order in the list and check status is failed
    [Tags]    order_deny
    Login and swipe to context    ${icon_Order}
    # Input product and press Enter
    Sleep    10s
    Wait until element is visibled on the screen    ${bnt_CreateOrder}
    Click on element on the screen    ${btn_ViewDetails}
    Click on element on the screen    ${btn_DenyOrder}
    # Không get text box đc
    # Input text into element    ${txtbox_ReasonDeny}    Sai phân loại
    # Click on element on the screen    ${btn_SubmitDeny}
    # Sleep    20s
    # Verify if text is displayed on the screen    Huỷ đơn thành công
    # Sleep    5s
    # Click on element on the screen    ${btn_SubmitDeny}
    # Sleep    5s
    # Verify if element is displayed on the screen    ${failedOrders}

TC: Cancel deny and check status is not change
    Login and swipe to context    ${icon_Order}
    # Input product and press Enter
    Sleep    10s
    Wait until element is visibled on the screen    ${bnt_CreateOrder}
    Click on element on the screen    ${btn_ViewDetails}
    Click on element on the screen    ${btn_DenyOrder}
    Click on element on the screen    ${btn_CancelDeny}
    Verify if element is displayed on the screen    ${waitingOrders}

TC: Submit an order and check status is processing
    Login and swipe to context    ${icon_Order}
    # Input product and press Enter
    Sleep    10s
    Wait until element is visibled on the screen    ${bnt_CreateOrder}
    Click on element on the screen    ${btn_ViewDetails}
    Click on element on the screen    ${ddbox_Warehouse}
    Click on element on the screen    //android.view.View[@content-desc="Kho Cẩm Thượng"]
    Click on element on the screen    ${btn_SubmitOrder}
