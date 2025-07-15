*** Settings ***

Resource    ../../Common_Libraries/Common_utilities.resource
Variables   ../Variables/Registration_variables.py

*** Keywords ***
Registration Functionality
       [Arguments]       ${PASSWORD}=password
       Wait And Click Element     ${REGISTER_LINK_LOCATOR}
       Wait And Click Element      ${GENDER_RADIOBUTTON_LOCATOR}
       ${unique_first}     Generate And Return Unique Name
       ${unique_last}    Generate And Return Unique Last Name
       ${unique_email}    Generate And Return Unique Email
       Wait And Input Text     ${FIRST_NAME_LOCATOR}    ${unique_first}
       Wait And Input Text     ${LAST_NAME_LOCATOR}    ${unique_last}
       Wait And Input Text     ${EMAIL_LOCATOR}   ${unique_email}
       Wait And Input Text    ${PASSWORD_LOCATOR}   ${PASSWORD}
       Wait And Input Text    ${CONFIRM_PASSWORD}    ${PASSWORD}
       Wait And Click Element    ${REGISTER_BUTTON_LOCATOR}

Varify Registration Functionality
       Wait Until Element Is Visible    ${COMPLETE_MESSAGE_LOCATOR}
       Wait And Click Element    ${CONTINUE_BUTTON_LOCATOR}