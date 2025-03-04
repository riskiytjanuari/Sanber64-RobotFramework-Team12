*** Settings ***
Resource    ../pageObjects/base.robot
Resource    ../pageObjects/homePage/homePage.robot
Resource    ../pageObjects/loginPage/loginPage.robot
Resource    ../pageObjects/searchPage/searchPage.robot

*** Test Cases ***
# Alexander
User Sign in With Invalid Email and Password
    Open Flight Application    platform_version=${PLATFORM_VERSION}    device_name=${DEVICE_NAME}
    Verify home screen appears
    Click sign in button
    #Sleep    3s
    Verify sign in success
    Input invalid_username
    Input invalid_password
    Click sign button on login page
    Verify Login Failed

User Sign in With Invalid Email w/o domain
    Open Flight Application    platform_version=${PLATFORM_VERSION}    device_name=${DEVICE_NAME}
    Verify home screen appears
    Click sign in button
    #Sleep    3s
    Verify sign in success
    Input invalid_username2
    Input password
    Click sign button on login page
    Verify Login Failed
#--alexander--