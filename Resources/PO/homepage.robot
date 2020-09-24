*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Keywords ***
search item
    [Arguments]    ${searchitem}
    input text    id:twotabsearchtextbox    ${searchitem}
    click button    xpath=//input[@type='submit' and @class='nav-input']




