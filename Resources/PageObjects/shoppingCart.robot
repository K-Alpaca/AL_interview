*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${loc_IMAGE_SHOPPING_CART}    id=
${loc_IMAGE_EMPTY_CART}       id=

${loc_TEXT_ORDER_CONFIRM}     id=
${loc_TEXT_ITEM_Price}        id=

${loc_BUTTON_LOWER_QTY}       id=
${loc_BUTTON_INCREASE_QTY}    id=
${loc_BUTTON_CHECKOUT}        id=
${loc_BUTTON_CONFIRM_ORDER}   id=

${loc_INPUT_QTY}              id=
${loc_INPUT_PROMO}            id=
${loc_INPUT_NAME}             id=
${loc_INPUT_PHONE_NUMBER}     id=
${loc_INPUT_ADDRESS}          id=

${loc_CHECKBOX_SHIPPING}      id=
${loc_CHECKBOX_PAYMENT}       id=


*** Keywords ***
View Shopping Cart
    Click Element    ${loc_IMAGE_SHOPPING_CART}
    
Lower Quantity
    Click Element    ${loc_BUTTON_LOWER_QTY}
    
Increase Quantity
    Click Element    ${loc_BUTTON_INCREASE_QTY}
    
Input Quantity
    [Arguments]    ${QTY}
    Input Text       ${loc_INPUT_QTY}    ${QTY}
    
Input Promo Code
    [Arguments]    ${promoCode}
    Input Text    ${loc_INPUT_PROMO}
    
Verify Empty Shopping Cart
    Element Should Be Visible    ${loc_IMAGE_EMPTY_CART}

Checkout
    [Arguments]    ${name}    ${phoneNo}    ${address}    ${text}
    Click Button                   ${loc_BUTTON_CHECKOUT}
    Select Shipping
    Select Payment Method
    Fill In Shipping Information   ${name}      ${phoneNo}       ${address}
    Click Button                   ${loc_BUTTON_CONFIRM_ORDER}
    Element Text Should Be         ${loc_TEXT_ORDER_CONFIRM}     ${text}

Select Shipping
    Select Checkbox        ${loc_CHECKBOX_SHIPPING}

Select Payment Method
    Select All From List   ${loc_CHECKBOX_PAYMENT}
    
Fill In Shipping Information
    [Arguments]    ${name}    ${phoneNo}    ${address}
    Input Text   ${loc_INPUT_NAME}           ${name}
    Input Text   ${loc_INPUT_PHONE_NUMBER}   ${phoneNo}
    Input Text   ${loc_INPUT_ADDRESS}        ${address}
    
Confirm Order
    [Arguments]    ${confirmText}
    Click Button                ${loc_BUTTON_CONFIRM_ORDER}
    Element Text Should Be      ${loc_TEXT_ORDER_CONFIRM}     ${confirmText}