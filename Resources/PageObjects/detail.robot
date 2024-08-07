*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${loc_BOOKMARK_REVIEW}         id=
${loc_BOOKMARK_DETAIL}         id=
${loc_BOOKMARK_PARAMETER}      id=

${loc_BUTTON_SHOPPING_CART}    id=


*** Keywords ***
Add Item To Cart
    Click Button    ${loc_BUTTON_SHOPPING_CART}

Check Item Detail
    Check Reviews
    Check Detail
    Check Parameters

Check Reviews
    Click Element    ${loc_BOOKMARK_REVIEW}
    
Check Detail
    Click Element    ${loc_BOOKMARK_DETAIL}
    
Check Parameters
    Click Element    ${loc_BOOKMARK_PARAMETER}