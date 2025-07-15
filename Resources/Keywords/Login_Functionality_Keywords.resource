*** Settings ***

Resource     ../../Common_Libraries/Common_utilities.resource
Variables    ../Variables/Login_Functionality_Variables.py


*** Keywords ***
Login Functionality
       [Arguments]      ${EMAIL_TEXT}=${EMAIL}     ${PASSWORD_TEXT}=${PASSWORD}
       Wait And Click Element    ${LOGIN_LINK_LOCATOR}
       Wait And Input Text    ${LOGIN_EMAIL_LOCATOR}    ${EMAIL_TEXT}
       Wait And Input Text    ${LOGIN_PASSWORD_LOCATOR}    ${PASSWORD_TEXT}
       Wait And Click Element    ${LOGIN_BUTTON_LOCATOR}
