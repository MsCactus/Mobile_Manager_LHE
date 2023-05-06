*** Settings ***
Library     AppiumLibrary
Resource    ../resources/resources_common/resources_common.robot


*** Keywords ***
Input valid username and password
    Click on element on the screen    ${txtbox_Account}
    Input text into element    ${txtbox_Account}    adminqc
    Sleep    5s
    Click on element on the screen    ${txtbox_Password}
    Input text into element    ${txtbox_Password}    admin@11
    Sleep    5s
    Click on element on the screen    ${btn_Login}

Login successful and save account
    Click on element on the screen    ${txtbox_Account}
    Input text into element    ${txtbox_Account}    adminqc
    Sleep    5s
    Click on element on the screen    ${txtbox_Password}
    Input text into element    ${txtbox_Password}    admin@11
    Sleep    5s
    Click on element on the screen    ${ckbox_Save}
    Click on element on the screen    ${btn_Login}

Login and swipe to context
    [Arguments]    ${xpath}
    Sleep    15s
    Wait Until Page Contains    Biểu đồ tăng trưởng CHTH
    Swipe By Percent    90    50    10    50
    Click on element on the screen    ${xpath}

Verify if account and password is saved
    Wait until element is visibled on the screen    ${txtbox_Account}
    Page Should Contain Text    adminqc
    Wait until element is visibled on the screen    ${txtbox_Password}

Verify if text is displayed on the screen
    [Arguments]    ${text}
    Wait Until Page Contains    ${text}
    Page Should Contain Text    ${text}

Verify if element is displayed on the screen
    [Arguments]    ${button}
    Wait until element is visibled on the screen    ${button}
    Page Should Contain Element    ${button}
    Element Should Be Enabled    ${button}

Verify if element is enabled on the screen
    [Arguments]    ${xpath}
    Wait until element is visibled on the screen    ${xpath}
    Element Should Be Enabled    ${xpath}
