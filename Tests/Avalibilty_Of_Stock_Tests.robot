*** Settings ***
Resource    ../Resources/Keywords/Avalibilty_Of_Stock_Keywords.resource
Suite Setup    Open Browser    ${None}   gc
Test Setup     Run Keywords    Go To    ${demo_web_url}   AND  Maximize Browser Window
Suite Teardown    Close Browser

*** Test Cases ***
Availability Of Stock Test
        Login Functionality
        Availability Of Stock