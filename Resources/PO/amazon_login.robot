*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Keywords ***

fill email
    [Arguments]    ${email}
    input text    id:ap_email    ${email}
fill password
    [Arguments]     ${password}
    input password  id:ap_password  ${password}
continue with email
    click button    id:continue
continue with password
    click button    id:signInSubmit
