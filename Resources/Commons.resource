*** Settings ***
Library         SeleniumLibrary
Test Timeout    10

Resource    PageObjects/homepage.robot
Resource    PageObjects/search.robot
Resource    PageObjects/detail.robot
Resource    PageObjects/shoppingCart.robot


*** Variables ***
${BROWSER}    chrome
${URL}        www.webpage.domain


*** Keywords ***
Start test
    Open Browser                ${URL}    ${BROWSER}
    Maximize Browser Window

End test
    Close Browser