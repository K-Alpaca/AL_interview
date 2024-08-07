*** Settings ***
Resource    ../Resources/Commons.resource

*** Test Cases ***
Search - Positive test
    Start Test
    Search For Item   ${product}
    End Test

Search - Result not found
    Start test
    Search (Product Not Found)   ${product}
    End Test

Browse Items
    Start Test
    Select Category
    Select Filter
    Order By
    End Test

TC7 Update shopping cart
    Start Test
    Search For Item           ${product}
    Select item
    Add Item To Cart
    Increase Quantity
    Element Text Should Be    ${loc_INPUT_QTY}    2
    Lower Quantity
    Element Text Should Be    ${loc_INPUT_QTY}    1
    Element Text Should Be    ${loc_TEXT_ITEM_Price}    expectedPriceBeforeDiscount
    Input Promo Code          ${promoCode}
    Element Text Should Be    ${loc_TEXT_ITEM_Price}    expectedPriceAfterDiscount
    Lower Quantity
    Verify Empty Shopping Cart
    End Test

TC9 E2E
    Start Test
    Search For Item       ${product}
    Select item
    Add Item To Cart
    Checkout              ${name}    ${phoneNo}    ${address}    ${text}
    Confirm Order         ${confirmText}
    End Test

