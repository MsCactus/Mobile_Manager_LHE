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

TC: Cancel deny and check status is not change
    [Tags]    order_deny_05
    Cancel deny order processing
    Check order status    ${waitingOrders}

TC: Deny an order in the list and check status is failed
    [Tags]    order_deny1
    View order detail
    Sleep    10s
    Click on element on the screen    ${btn_DenyOrder}
    Input deny order and submit deny
    Sleep    10s
    Check if btn back and submit is displayed in popup
    Click on element on the screen    ${btn_Submit} 
    Check order status    ${failedOrders}

TC: Deny an order after adding warehouse and check status is failed
    [Tags]    order_deny2
    View order detail
    Select warehouse in dropdown list
    Sleep    10s
    Click on element on the screen    ${btn_DenyOrder} 
    Input deny order and submit deny
    Sleep    10s
    Check if btn back and submit is displayed in popup
    Click on element on the screen    ${btn_Submit} 
    Check order status    ${failedOrders}

# TC: Deny an order after adding more product by btn_AddProducts and check status is failed
    # [Tags]    order_deny2
    # View order detail
    # Sleep    10s
    # Click on element on the screen    ${btn_DenyOrder}
    ### Chua implement doan them san pham ###
    # Input deny order and submit deny
    # Sleep    10s
    # Wait Until Element Is Visible    ${btn_Back}
    # Page Should Contain Element    ${btn_Back}
    # Page Should Contain Element    ${btn_SubmitDeny}
    # Click on element on the screen    ${btn_SubmitDeny} 
    # Check order status    ${failedOrders}

TC: Deny an order after adding product & warehouse by increase/decrease button and check status is failed
    [Tags]    order_deny3
    View order detail
    Sleep    10s
    Swipe    345    930    345    340    
    Click on element on the screen    ${btn_increaseQuantities}
    Click on element on the screen    ${btn_increaseQuantities}
    Click on element on the screen    ${btn_decreaseQuantities}
    Click on element on the screen    ${btn_updateQuantities}
    Sleep    10s
    Wait until element is visibled on the screen    ${btn_Submit}
    Click on element on the screen    ${btn_Submit}
    Select warehouse in dropdown list
    Sleep    10s
    Click on element on the screen    ${btn_DenyOrder} 
    Input deny order and submit deny
    Sleep    10s
    Check if btn back and submit is displayed in popup
    Click on element on the screen    ${btn_Submit} 
    Check order status    ${failedOrders}

TC: Deny an order after adding product by increase/decrease button and check status is failed
    [Tags]    order_deny3
    View order detail
    Sleep    10s
    Swipe    345    930    345    340    
    Click on element on the screen    ${btn_increaseQuantities}
    Click on element on the screen    ${btn_increaseQuantities}
    Click on element on the screen    ${btn_decreaseQuantities}
    Click on element on the screen    ${btn_updateQuantities}
    Sleep    10s
    Wait until element is visibled on the screen    ${btn_Submit}
    Click on element on the screen    ${btn_Submit}
    Sleep    10s
    Click on element on the screen    ${btn_DenyOrder} 
    Input deny order and submit deny
    Sleep    10s
    Check if btn back and submit is displayed in popup
    Click on element on the screen    ${btn_Submit} 
    Check order status    ${failedOrders}

TC: Deny an order after adding product & warehouse by input quantity and check status is failed
    [Tags]    order_deny3
    View order detail
    Sleep    10s
    Swipe    345    930    345    340    
    Click on element on the screen    ${txt_editQuantities}
    Clear Text    ${txt_editQuantities}
    Input text into element    ${txt_editQuantities}    5
    Press Keycode    66
    Click on element on the screen    ${btn_updateQuantities}
    Sleep    10s
    Wait until element is visibled on the screen    ${btn_Submit}
    Click on element on the screen    ${btn_Submit}
    Select warehouse in dropdown list
    Sleep    10s
    Click on element on the screen    ${btn_DenyOrder} 
    Input deny order and submit deny
    Sleep    10s
    Check if btn back and submit is displayed in popup
    Click on element on the screen    ${btn_Submit} 
    Check order status    ${failedOrders}

TC: Deny an order after adding product by input quantity and check status is failed
    [Tags]    order_deny3
    View order detail
    Sleep    10s
    Swipe    345    930    345    340    
    Click on element on the screen    ${txt_editQuantities}
    Clear Text    ${txt_editQuantities}
    Input text into element    ${txt_editQuantities}    5
    Press Keycode    66
    Click on element on the screen    ${btn_updateQuantities}
    Sleep    10s
    Wait until element is visibled on the screen    ${btn_Submit}
    Click on element on the screen    ${btn_Submit}
    Select warehouse in dropdown list
    Sleep    10s
    Click on element on the screen    ${btn_DenyOrder} 
    Input deny order and submit deny
    Sleep    10s
    Check if btn back and submit is displayed in popup
    Click on element on the screen    ${btn_Submit} 
    Check order status    ${failedOrders}

# TC: Deny an order after empty list and check status is failed
#     [Tags]    order_deny3
#     View order detail
#     Sleep    10s
#     Swipe    345    930    345    340    
#     Swipe    625    1085    115    1085  
#     Click on element on the screen    ${btn_updateQuantities}
#     Sleep    10s
    ### Chưa hòan thiện ###

TC: Submit an order and check status is processing
    [Tags]    order_submit_02
    View order detail
    Select warehouse in dropdown list
    Click on element on the screen    ${btn_SubmitOrder}
    Check order status    ${processingOrders}

TC: Submit an order without select warehouse
    [Tags]    order_submit_02
    View order detail
    Click on element on the screen    ${btn_SubmitOrder}
    Page Should Contain Element    accessibility_id=Vui lòng chọn kho xuất hàng

TC: Check back button
    View order detail
    Click on element on the screen    ${btn_backToPreviousPage}
    Sleep    3s
    Page Should Contain Element    //android.view.View[@content-desc="Đơn hàng"]
    Click on element on the screen    ${btn_backToPreviousPage}
    Page Should Contain Element    ${icon_Settings}
    Page Should Contain Element    ${icon_Notification}
    Page Should Contain Element    ${icon_Personal} 
    Page Should Contain Element    ${icon_DistributorsManagement}
    Page Should Contain Element    ${icon_Order}
    Page Should Contain Element    ${icon_AccountSettings}
    Page Should Contain Element    ${icon_Product}

TC: Check home button


TC: Create order
#    Login and swipe to context    ${icon_Order}
#    # Input product and press Enter
#    Sleep    10s
#    Wait until element is visibled on the screen    ${bnt_CreateOrder}
#    Click on element on the screen    ${bnt_CreateOrder}
#    Wait Until Page Contains    Thông tin đơn hàng