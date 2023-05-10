*** Settings ***
Library     AppiumLibrary


*** Variables ***
${timeout}          24s
${time_retry}       4s


*** Keywords ***
Wait until element is visibled on the screen
    [Arguments]    ${xpath}
    Wait Until Keyword Succeeds
    ...    ${timeout}
    ...    ${time_retry}
    ...    Wait Until Element Is Visible
    ...    ${xpath}
    ...    ${timeout}
    ...    error= Cannot find ${xpath} element

Click on element on the screen
    [Arguments]    ${xpath}
    Wait until element is visibled on the screen    ${xpath}
    Click Element    ${xpath}

Input text into element
    [Arguments]    ${xpath}    ${text}
    Wait until element is visibled on the screen    ${xpath}
    Input Text    ${xpath}    ${text}
    ${is_Keyboard_Show}=    Run Keyword And Return Status    Is Keyboard Shown
    IF    ${is_Keyboard_Show} == True    Hide Keyboard
