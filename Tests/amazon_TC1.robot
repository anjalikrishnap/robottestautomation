*** Settings ***
Resource    ../Resources/amazon.robot
Resource    ../Resources/common.robot
Library    Dialogs
Library    OperatingSystem
Test Setup    common.start browser
Test Teardown  common.exit browser
Resource    ../Resources/amazon_datareader.robot

*** Variables ***
&{proddata}     searchitem=iphone   expected=iphone
&{credential}   email=anjali_am@outlook.com  password=testpassword
&{credential1}    email=anjali_am@outlook.com  password=testpassword
${filepath}    C:\\Users\\krish\\PycharmProjects\\robottestautomation\\DATAS\\csvdata.csv
${filepathprod}  C:\\Users\\krish\\PycharmProjects\\robottestautomation\\DATAS\\product.csv
*** Test Cases ***
amazon login invalid scenarios
    [Tags]  Negative test
    [Documentation]    to test  invalid login scenarios
    @{csvdata}=    amazon_datareader.Get csv data for login    ${filepath}
    FOR    ${val}    IN    @{csvdata}
        log to console    ${val}
        amzon login csv    @{val}
    END
amzon login scenarios
    [Tags]    Smoke login
    [Documentation]    to test  valid login scenarios
    [Template]    amzon login
    &{credential}
    &{credential1}
amzon invalid product search
    [Tags]    Smoke
    [Documentation]    to test  product search for invalid products
    &{proddata}=    create dictionary    searchitem=fffffffffffffffffffffff   expected=No results for fffffffffffffffffffffff
    amazon search   &{proddata}
amzon valid product search
    [Tags]    Smoke
    [Documentation]    to test  product search for valid products
    amazon search   &{proddata}
amazon test count of displayed product
    [Documentation]    to check whether the total number of item displayed on page is equal to the mentioned number
    amazon.amazon product count     oneplus    xpath://img[@data-image-latency='s-product-image']  18
amazon cart operation
    [Tags]    Regression
    [Documentation]    to test  adding  multiple product to cart
    #TODO - complete this by adding verification in cart page
    set log level  debug
    @{prodlist}=    get selections from user    which product to add?    amazon echo    lenovotabm10
    @{proddic}=  Get csv data for product add to cart   ${filepathprod}
    FOR     ${prod}     IN  @{prodlist}
        Handle inner loop    ${prod}    @{proddic}
    END

#run keyword if    '${prod}'=='${proddic}[0][0]'   amazon.amazon add to cart    ${proddic}[0][0]    ${proddic}[0][1]
*** Keywords ***
Handle inner loop
    [Arguments]    ${prod}    @{proddic}
    FOR    ${i}    IN    @{proddic}
            run keyword if    '${prod}'=='${i}[0]'   amazon.amazon add to cart    ${i}[0]    ${i}[1]
    END





