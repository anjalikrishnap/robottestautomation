*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Keywords ***

fill email
    [Arguments]    ${email}
    wait until element is visible  id:ap_email
    input text    id:ap_email    ${email}
fill password
    [Arguments]     ${password}
    wait until element is visible  id:ap_password
    input password  id:ap_password  ${password}
continue with email
    wait until element is visible  id:continue
    click button    id:continue
continue with password
    wait until element is visible  id:signInSubmit
    click button    id:signInSubmit

