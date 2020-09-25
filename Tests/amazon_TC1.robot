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

amazon cart operation
    [Tags]    Smoke
    #TODO - complete this
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





