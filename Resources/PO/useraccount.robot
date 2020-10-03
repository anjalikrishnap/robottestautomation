*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Keywords ***
click your addresses
    click element    xpath://img[@alt='Your Addresses']
click add address in your address
    click element    xpath://h2[text()='Add address']
click amazon pay balance
    click element    xpath://img[@alt='Amazon Pay balance']

