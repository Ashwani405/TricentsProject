*** Settings ***
Resource   ../Resources/Keywords/Cart_Quantity_&_discount_logic_keywords.resource
Suite Setup     Open Browser   ${None}  gc
Test Setup      Run Keywords    Go To    ${demo_web_url}    AND   Maximize Browser Window
Suite Teardown  Close Browser


*** Test Cases ***
Cart Quantity And Discount Logic Test
      [Tags]      smoke
      Login Functionality
      Cart Quantity
      Check Discount Eligibility