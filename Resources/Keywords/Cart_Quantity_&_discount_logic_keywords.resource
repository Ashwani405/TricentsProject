*** Settings ***

Resource    ../../Common_Libraries/Common_utilities.resource
Resource    Login_Functionality_Keywords.resource
Variables    ../Variables/Cart_Quantity_&_discount_logic_variables.py

*** Keywords ***

Cart Quantity
        Wait And Click Element    ${BOOKS_LOCATOR}
        Wait And Click Element    ${FIRST_PRODUCT_ADD_TO_CART}
        Wait And Click Element    ${SHOPPING_CART_LOCATOR}

Check Discount Eligibility
        [Arguments]     ${QUANTITY}=210
        Wait Until Element Is Visible     ${QUANTITY_BOX_LOCATOR}
        Clear Element Text    ${QUANTITY_BOX_LOCATOR}
        Wait And Input Text    ${QUANTITY_BOX_LOCATOR}   ${QUANTITY}
        Wait And Click Element    ${UPDATE_CART_LOCATOR}
        ${total_text}=    Get Text    ${CART_TOTAL_LOCATOR}
        ${total_amount}=    Evaluate    str(${total_text}).replace('₹','').replace(',','')
        ${total_amount}=    Convert To Number    ${total_amount}
        Run Keyword If    ${total_amount} > 2000    Log     Discount eligible
        ...    ELSE    Log     Not eligible for discount



#        ${total_text}=    Get Text    ${CART_TOTAL_LOCATOR}
#        ${total_amount}=    Convert To Number    ${total_text}
#        Run Keyword If    ${total_amount} > 2000    Log    Discount eligible
#        ...    ELSE    Log    Not eligible for discount


