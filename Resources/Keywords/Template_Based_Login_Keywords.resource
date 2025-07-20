*** Settings ***

Resource    ../../Common_Libraries/Common_utilities.resource
Variables   ../Variables/Login_Functionality_Variables.py


*** Keywords ***
Invalid Login Test
    [Arguments]    ${EMAIL_TEXT}    ${PASSWORD_TEXT}
    Click Link    ${LOGIN_LINK_LOCATOR}
    Input Text    ${LOGIN_EMAIL_LOCATOR}    ${EMAIL_TEXT}
    Input Text    ${LOGIN_PASSWORD_LOCATOR}  ${PASSWORD_TEXT}
    Click Button  ${LOGIN_BUTTON_LOCATOR}
    Wait Until Page Contains    Login was unsuccessful.    timeout=5s
    Page Should Contain         Login was unsuccessful.
