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
&{credential}   email=Anjalitheertha@gmail.com  password=Anjali@1
&{credential1}   email=Anjalia@gmail.com  password=Anjali@1
${filepath}    C:\\Users\\krish\\PycharmProjects\\robottestautomation\\DATAS\\csvdata.csv

*** Test Cases ***
amazon login with csv
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
amazon logintest "Cart"
    [Tags]    Smoke
    #TODO - complete this
    set log level  debug
    ${s}=    get selection from user    who areyou?    anjali    krish

    amazon.amazon search
    ${ss} =    set variable    ${s}
    @{ll}=     set variable    ffdf    hf    hh
    set global variable    @{ll}
    comment    @{ll}
    create directory    sample
    #copy directory    sample     c:/
    create file    sample/samplefile
    should exist    sample








