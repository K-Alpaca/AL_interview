*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${loc_INPUT_SEARCH}     id=

${loc_BUTTON_SEARCH}    id=

${loc_RESULT}           id=

*** Keywords ***
Search (Product Not Found)
    [Arguments]    ${product}
    Search                    ${product}
    Element Text Should Be    ${loc_RESULT}    Product not found.

Search For Item
    [Arguments]     ${product}
    Input Text      ${loc_INPUT_SEARCH}    ${product}
    Click Button    ${loc_BUTTON_SEARCH}
    
