
*** Settings ***
Resource    ../Resources/amazon.robot
Resource    ../Resources/common.robot
Library    Dialogs
Test Setup    common.start browser
Test Teardown    common.exit browser
Resource    ../Resources/amazon_datareader.robot

*** Variables ***
${filepath}  C:\\Users\\krish\\PycharmProjects\\robottestautomation\\DATAS\\addresss.xlsx
&{credential}   email=anjali_am@outlook.com  password=testpassword
*** Test Cases ***
Address edit
    [Tags]    user account scenario

    @{addressdata}=    amazon_datareader.Get excel data   ${filepath}    ${2}    ${2}    ${1}   ${11}
    FOR    ${val}    IN    @{addressdata}
        log to console    ${val}
        amazon edit address    @{val}
    END
pay balance
    amazon pay balance

