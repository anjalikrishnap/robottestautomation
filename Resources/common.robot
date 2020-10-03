*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Keywords ***
start browser
#TODO  saucelab-remote_url=http://anjalikrishna:5e0ab095-3a41-403c-9019-a4678b045a45@ondemand.saucelabs.com:80/wd/hub    desired_capabilities=name:linux + ff,platform:Linux,browserName:Firefox,version:45.0
    open browser    blank:browser    chrome
    maximize browser window
exit browser
    close all browsers



