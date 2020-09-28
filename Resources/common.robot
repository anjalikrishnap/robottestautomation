*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Keywords ***
start browser
    open browser    blank:browser    ff    remote_url=http://anjalikrishna:5e0ab095-3a41-403c-9019-a4678b045a45@ondemand.saucelabs.com:80/wd/hub    desired_capabilities=name:linux + ff,platform:Linux,browserName:Firefox,version:45.0
    maximize browser window
exit browser
    close all browsers



