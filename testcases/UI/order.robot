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
TC: View an detail order in the list
    [Tags]    order_view
    View order detail
    Verify if element is displayed on the screen    //android.view.View[@content-desc="Chi tiết đơn hàng"]

TC: Cancel deny order processing
    [Tags]    order_deny_04
    Cancel deny order processing

TC: Cancel deny and check status is not change
    [Tags]    order_deny_05
    Cancel deny order processing
    Check order status    ${waitingOrders}

TC: Submit an order and check status is processing
    [Tags]    order_submit_02
    Select warehouse in dropdown list
    Click on element on the screen    ${btn_SubmitOrder}
    Check order status    ${processingOrders}

TC: Deny an order in the list and check status is failed
    [Tags]    order_deny1
    Deny an order from the list
    Sleep    10s
    Check order status    ${failedOrders}

TC: Deny an order after adding more product by btn_AddProducts and check status is failed
    [Tags]    order_deny2
    # Deny an order from the list
    # View order detail
    # Click on element on the screen    ${btn_DenyOrder}
    # Input text into element    ${txtbox_ReasonDeny}    Sai phân loại
    # Click on element on the screen    ${btn_SubmitDeny}
    # Sleep    20s
    # Verify if text is displayed on the screen    Huỷ đơn thành công
    # Sleep    5s
    # Click on element on the screen    ${btn_SubmitDeny}
    # Sleep    5s
    # Verify if element is displayed on the screen    ${failedOrders}

TC: Deny an order after adding more product by + and check status is failed
    [Tags]    order_deny3
    View order detail
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

TC: Deny an order after adding more product by - and check status is failed
    [Tags]    order_deny3
    View order detail
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

TC: Deny an order after adding more product by input quantity and check status is failed
    [Tags]    order_deny3
    View order detail
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

TC: Create order
#    Login and swipe to context    ${icon_Order}
#    # Input product and press Enter
#    Sleep    10s
#    Wait until element is visibled on the screen    ${bnt_CreateOrder}
#    Click on element on the screen    ${bnt_CreateOrder}
#    Wait Until Page Contains    Thông tin đơn hàng
