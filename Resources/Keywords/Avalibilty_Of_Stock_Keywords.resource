*** Settings ***
Resource   ../../Common_Libraries/Common_utilities.resource
Resource    Login_Functionality_Keywords.resource
Variables     ../Variables/Avalibilty_Of_Stock_Variables.py

*** Keywords ***
Availability Of Stock
        Wait And Click Element    ${APPAREL_AND_SHOES_LOCATOR}
        Wait And Click Element    ${ROCKABILITY_POLKA_LOCATOR}
        ${STOCK_TEXT}   Get Text    ${AVAILABILITY_LOCATOR}
        Run Keyword If    '${STOCK_TEXT}'=='In stock'   Log    Product is available
        ...    ELSE    Log    Product is out of stock