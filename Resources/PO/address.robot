*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${elemaddress}    id:address-ui-widgets-enterAddressFullName
*** Keywords ***

select country
    [Arguments]  ${country}
    select from list by value   id:1_dropdown_combobox    ${country}
input full name
    [Arguments]  ${Fullname}
    input text    id:address-ui-widgets-enterAddressFullName  ${Fullname}
input fmobile number
    [Arguments]  ${Mobile}
    input text    id:address-ui-widgets-enterAddressPhoneNumber  ${Mobile}
input pincode
    [Arguments]  ${PIN}
    input text    id:address-ui-widgets-enterAddressPostalCode    ${PIN}
input flat
    [Arguments]  ${Flat}
    input text    id:address-ui-widgets-enterAddressLine1  ${Flat}
input area
    [Arguments]  ${Area}
    input text    id:address-ui-widgets-enterAddressLine2  ${Area}
input landmark
    [Arguments]  ${landmark}
    input text    id:address-ui-widgets-landmark    ${landmark}
input town
    [Arguments]  ${Town}
    input text    id:address-ui-widgets-enterAddressCity  ${Town}
