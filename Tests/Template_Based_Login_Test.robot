*** Settings ***
Resource        ../Resources/Keywords/Template_Based_Login_Keywords.resource
Suite Setup    Open Browser   ${None}  gc
Test Setup    Run Keywords    Go To    ${demo_web_url}    AND   Maximize Browser Window
Suite Teardown    Close Browser
Test Template   Invalid Login Test

*** Test Cases ***
Invalid Login - Email,Password
    [Tags]   smoke,regression
    validemail@test.com    wrongpass123
    wrongemail@test.com    CorrectPass123
    wrongemail2@test.com   wrong12345
    wrongemail42@test.com    8837738


