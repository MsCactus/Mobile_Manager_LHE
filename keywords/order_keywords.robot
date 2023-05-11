*** Settings ***
Library     AppiumLibrary
Resource    ../resources/resources_common/resources_common.robot


*** Keywords ***
View order detail
    Login and swipe to context    ${icon_Order}
    # Input product and press Enter
    Sleep    10s
    Wait until element is visibled on the screen    ${bnt_CreateOrder}
    Click on element on the screen    ${btn_ViewDetails}

Cancel deny order processing
    View order detail
    Click on element on the screen    ${btn_DenyOrder}
    Click on element on the screen    ${btn_Cancel}

Select warehouse in dropdown list
    Click on element on the screen    ${ddbox_Warehouse}
    Click on element on the screen    //android.view.View[@content-desc="Kho Cẩm Thượng"]

Input deny order and submit deny
    Sleep    3s
    Click Element    ${txtbox_ReasonDeny}
    Input text    ${txtbox_ReasonDeny}    sai
    Press Keycode    66
    Sleep    5s
    Click on element on the screen    ${btn_Submit}

Check order status
    [Arguments]    ${xpath}
    Sleep    5s
    Verify if element is displayed on the screen    ${xpath}

Check if btn back and submit is displayed in popup
    Wait Until Element Is Visible    ${btn_Back}
    Page Should Contain Element    ${btn_Back}
    Page Should Contain Element    ${btn_Submit}
