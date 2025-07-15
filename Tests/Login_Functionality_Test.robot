*** Settings ***

Resource    ../Resources/Keywords/Login_Functionality_Keywords.resource
Suite Setup      Open Browser    ${None}    gc
Test Setup      Run Keywords     Go To    ${demo_web_url}   AND   Maximize Browser Window
Suite Teardown     Close Browser


*** Test Cases ***
Login Functionality Test
      [Tags]     SMOKE, REGRESSION
      Login Functionality