*** Settings ***
Resource   ../Resources/PO/homepage.robot
Resource   ../Resources/PO/amazon_nav.robot
Resource   ../Resources/PO/amazon_login.robot
Resource   ../Resources/PO/cart.robot
Resource   ../Resources/PO/checkout.robot
Resource   ../Resources/PO/useraccount.robot
Resource   ../Resources/PO/address.robot
Library    Dialogs

*** Variables ***

*** Keywords ***
amazon search
    [Arguments]    ${searchitem}    ${expected}
    amazon_nav.navigate to amazon home page
    homepage.search item    ${searchitem}
    page should contain     ${expected}
amazon login
    [Arguments]  ${email}   ${password}
    amazon_nav.navigate to amazon login page
    amazon_login.fill email    ${email}
    amazon_login.continue with email
    amazon_login.fill password    ${password}
    amazon_login.continue with password
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
amazon edit address
    [Arguments]    ${country}	${Fullname}	${Mobile}	${PIN}    ${Flat} 	${Area}	${landmark}	${Town}	${state}    ${email}    ${pword}
    amazon_nav.navigate to user account
    useraccount.click your addresses

    #cart.click proceed to buy
    amazon_login.fill email    ${email}
    amazon_login.continue with email
    amazon_login.fill password    ${pword}
    amazon_login.continue with password
    ${continue}=    get selection from user    Have you verified?    Yes    no
    #TODO-now manually approve the link shared to contact
    run keyword if  '${continue}'== 'Yes'    useraccount.click add address in your address
    #address.select country  ${country}
    address.input full name    ${Fullname}
    address.input fmobile number    ${Mobile}
    address.input pincode    ${PIN}
    address.input flat    ${Flat}
    address.input area    ${Area}
    address.input landmark    ${landmark}
    address.input town    ${Town}



amazon pay balance

    amazon_nav.navigate to user account
    useraccount.click amazon pay balance
    #TODO -need to verify with a valid account
    #page should contain    Adding money is just one step away
    #select from list by index    //li[@role='option']    2



