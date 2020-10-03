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
${filepath}    C:\\Users\\krish\\PycharmProjects\\robottestautomation\\DATAS\\csvdata.csv
*** Test Cases ***
amzon invalid product search
    [Tags]    Functional
    [Documentation]    test to product search for invalid products
    &{proddata}=    create dictionary    searchitem=fffffffffffffffffffffff   expected=No results for fffffffffffffffffffffff
    amazon search   &{proddata}
amzon valid product search
    [Tags]    Functinal Smoke
    [Documentation]    test to product search for valid products
    amazon search   &{proddata}
amazon test count of displayed product
    [Documentation]    to check whether the total number of item displayed on page is equal to the mentioned number
    amazon.amazon product count     oneplus    xpath://img[@data-image-latency='s-product-image']  20









