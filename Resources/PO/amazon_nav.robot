*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Keywords ***
navigate to amazon home page
    go to        https://www.amazon.in/

navigate to amazon login page
    go to   https://www.amazon.in/ap/signin?openid.pape.max_auth_age=0&openid.return_to=https%3A%2F%2Fwww.amazon.in%2F%3F%26ext_vrnc%3Dhi%26tag%3Dgooginhydr1-21%26ref%3Dnav_custrec_signin%26adgrpid%3D58570011483%26hvpone%3D%26hvptwo%3D%26hvadid%3D294130877954%26hvpos%3D%26hvnetw%3Dg%26hvrand%3D7863391428126781528%26hvqmt%3Db%26hvdev%3Dc%26hvdvcmdl%3D%26hvlocint%3D%26hvlocphy%3D9061998%26hvtargid%3Dkwd-296914595020%26hydadcr%3D5844_1738698%26gclid%3DEAIaIQobChMI5Nyq0cn-6wIVTdiWCh3w_AiiEAAYASAAEgLdtPD_BwE&openid.identity=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.assoc_handle=inflex&openid.mode=checkid_setup&openid.claimed_id=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.ns=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0&

navigate to amazon cart page
    go to    https://www.amazon.in/gp/cart/view.html?ref_=nav_cart

navigate to user account
    go to    https://www.amazon.in/gp/css/homepage.html?ref_=nav_AccountFlyout_ya
navigate to address update page
    go to  https://www.amazon.in/gp/buy/addressselect/handlers/display.html?hasWorkingJavascript=1