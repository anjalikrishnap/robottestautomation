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
${filepath}    C:\\Users\\krish\\PycharmProjects\\robottestautomation\\DATAS\\csvdata.csv
${filepathprod}  C:\\Users\\krish\\PycharmProjects\\robottestautomation\\DATAS\\product.csv
*** Test Cases ***
amazon login invalid scenarios
    [Tags]  Negative
    [Documentation]    to test  invalid login scenarios with data driven
    @{csvdata}=    amazon_datareader.Get csv data    ${filepath}
    FOR    ${val}    IN    @{csvdata}
        log to console    ${val}
        amzon login csv    @{val}
    END
amzon login scenarios
    [Tags]    Positive
    [Documentation]    to test  valid login scenarios
    [Template]    amazon login
    &{credential}






