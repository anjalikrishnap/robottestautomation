*** Settings ***
Resource    ../Resources/amazon.robot
Resource    ../Resources/common.robot
Library    Dialogs
Library    OperatingSystem
Test Setup    common.start browser
Test Teardown  common.exit browser
Resource    ../Resources/amazon_datareader.robot

*** Variables ***
&{proddata}     searchitem=iphone   expected_searchitem=iphone
&{credential}   email=Anjalitheertha@gmail.com  password=Anjalifsf
&{credential1}   email=Anjalia@gmail.com  password=Anjasfd
${filepath}    C:\\Users\\krish\\PycharmProjects\\robottestautomation\\DATAS\\csvdata.csv

*** Test Cases ***
amazon login with invalid credentials
    @{csvdata}=    amazon_datareader.Get csv data for login    ${filepath}
    FOR    ${val}    IN    @{csvdata}
        log to console    ${val}
        amzon login csv    @{val}
    END
amzon login scenarios
    [Template]    amzon login
    &{credential}
    &{credential1}
amzon product search
    amazon search   &{proddata}









