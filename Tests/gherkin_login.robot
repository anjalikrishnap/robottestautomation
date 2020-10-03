*** Settings ***
Resource   ../Resources/PO/amazon_nav.robot
Resource   ../Resources/PO/amazon_login.robot
*** Variables ***
${email}  anjali_am@outlook.com
${password}    testpassword
*** Test Cases ***
amazon login
    Given  amazon_nav.navigate to amazon login page
    when amazon_login.fill email    ${email}
    when amazon_login.continue with email
    when amazon_login.fill password    ${password}
    when amazon_login.continue with password
    then page should contain    id:nav-hamburger-menu