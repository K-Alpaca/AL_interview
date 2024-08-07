*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${loc_IMAGE_HOMEPAGE}       id=
${loc_IMAGE_FILTER}         id=
${loc_IMAGE_ITEM}           id=

${loc_CATEGORY}             id=

${loc_DROPDOWN_ORDER_BY}    id=


*** Keywords ***
Go To Homepage
    Click Image     ${loc_IMAGE_HOMEPAGE}
    
Select Category
    Click Element   ${loc_CATEGORY}
    
Select Filter
    Click Image     ${loc_IMAGE_FILTER}
    
Order By
    Click Element   ${loc_DROPDOWN_ORDER_BY}
    
Select item
    Click Element   ${loc_IMAGE_ITEM}