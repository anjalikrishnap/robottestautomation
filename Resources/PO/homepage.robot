*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Keywords ***
search item
    [Arguments]    ${searchitem}
    input text    id:twotabsearchtextbox    ${searchitem}
    click button    xpath=//input[@type='submit' and @class='nav-input']


search and select item
    [Arguments]    ${searchitem}    ${locator}
    input text    id:twotabsearchtextbox    ${searchitem}
    click button    xpath=//input[@type='submit' and @class='nav-input']
    click element    ${locator}
    sleep   3s
    Select Window   NEW
    click button    xpath://input[@id='add-to-cart-button']



