*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Keywords ***
start browser
    open browser    blank:browser    CHROME
    maximize browser window
exit browser
    close all browsers



