*** Settings ***
Resource   ../Resources/PO/homepage.robot
Resource   ../Resources/PO/amazon_nav.robot
Resource   ../Resources/PO/amazon_login.robot

*** Variables ***

*** Keywords ***
amazon search
    [Arguments]    ${searchitem}    ${expected}
    amazon_nav.navigate to amazon home page
    homepage.search item    ${searchitem}
    page should contain     ${expected}
amzon login
    [Arguments]  ${email}   ${password}
    amazon_nav.navigate to amazon login page
    amazon_login.fill email    ${email}
    amazon_login.continue with email
    amazon_login.fill password    ${password}
amzon login csv
    [Arguments]  @{val}
    amazon_nav.navigate to amazon login page
    amazon_login.fill email    ${val}[0]
    amazon_login.continue with email
    Run Keyword And Ignore Error    amazon_login.fill password    ${val}[1]
    Run Keyword And Ignore Error    amazon_login.continue with password
    page should contain    ${val}[2]
amazon product count
    [Arguments]    ${searchitem}    ${xpathsearch}    ${count}
    amazon_nav.navigate to amazon home page
    homepage.search item    ${searchitem}
    locator should match x times    ${xpathsearch}  ${Count}

amazon add to cart
    [Arguments]    ${item}    ${locator}
    amazon_nav.navigate to amazon home page
    homepage.search and select item    ${item}    ${locator}


