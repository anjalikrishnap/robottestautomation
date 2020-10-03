*** Settings ***
Resource    ../Resources/amazon.robot
Resource    ../Resources/common.robot
Library    Dialogs
Test Setup    common.start browser

Resource    ../Resources/amazon_datareader.robot

*** Variables ***
&{credential}   email=anjali_am@outlook.com  password=testpassword
${filepathprod}  C:\\Users\\krish\\PycharmProjects\\robottestautomation\\DATAS\\product.csv
*** Test Cases ***

amazon cart operation
    [Tags]    add to cart scenario
    [Documentation]    To test  adding  multiple product to cart

    set log level  debug
    @{prodlist}=    get selections from user    which product to add?    amazon echo    lenovotabm10
    @{proddic}=  amazon_datareader.Get csv data    ${filepathprod}
    FOR     ${prod}     IN  @{prodlist}
        Handle inner loop    ${prod}    @{proddic}
    END
Test to apply Promo code
    [Tags]  non critical
    [Documentation]    to test  whether user is able to apply promo code and discount is applied on total
    #TODO - complete this by adding promo code validation
    pass execution


#run keyword if    '${prod}'=='${proddic}[0][0]'   amazon.amazon add to cart    ${proddic}[0][0]    ${proddic}[0][1]
*** Keywords ***
Handle inner loop
    [Arguments]    ${prod}    @{proddic}
    FOR    ${i}    IN    @{proddic}
            run keyword if    '${prod}'=='${i}[0]'   amazon.amazon add to cart    ${i}[0]    ${i}[1]
    END










