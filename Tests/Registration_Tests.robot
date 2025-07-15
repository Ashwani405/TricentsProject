*** Settings ***
Resource     ../Resources/Keywords/Registeration_keywords.resource
Suite Setup     Open Browser     ${None}    gc
Test Setup      Run Keywords     Go To   ${demo_web_url}    AND   Maximize Browser Window
Suite Teardown   Close Browser


*** Test Cases ***
Register a New User Test
         [Tags]    smoke
         Registration Functionality
         Varify Registration Functionality


