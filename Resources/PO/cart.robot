*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Keywords ***
click proceed to buy
    click button    xpath://input[@name='proceedToRetailCheckout']
check this order contains gift
    checkbox should be selected    id:sc-buy-box-gift-checkbox