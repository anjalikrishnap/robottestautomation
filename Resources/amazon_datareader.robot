*** Settings ***
Documentation    reading all the data required for amazon application
Library    ../Customlib/csvinput.py
*** Variables ***


*** Keywords ***
Get csv data for login
    [Arguments]    ${filepath}
    ${data} =    csv input process   ${filepath}
    [Return]    ${data}