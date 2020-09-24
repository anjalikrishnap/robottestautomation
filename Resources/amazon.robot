*** Settings ***
Resource   ../Resources/PO/homepage.robot
Resource   ../Resources/PO/amazon_nav.robot
Resource   ../Resources/PO/amazon_login.robot

*** Variables ***

*** Keywords ***
amazon search
    [Arguments]    ${searchitem}    ${expected_searchitem}
    amazon_nav.navigate to amazon home page
    homepage.search item    ${searchitem}
    page should contain     ${expected_searchitem}
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




