*** Settings ***
Resource    ../pageObjects/base.robot
Resource    ../pageObjects/homePage/homePage.robot
Resource    ../pageObjects/loginPage/loginPage.robot
Resource    ../pageObjects/searchPage/searchPage.robot

*** Test Cases ***
#Riski Ferdian
User search booking code with invalid data
    Open Flight Application    platform_version=${PLATFORM_VERSION}    device_name=${DEVICE_NAME}
    Verify home screen appears
    Click sign in button
    #Sleep    3s
    Verify sign in success
    Input username
    Input password
    Click sign button on login page
    Verify can login with valid username
    Sleep     3s
    Click search menu
    Verify search page
    Input flight number    booking_code=${INVALID_BOOKING_CODE}
    Click search button
    Show error message
    Close Flight Application

# Ahmad Haris Rifani
User search booking code with Valid data
    Open Flight Application    platform_version=${PLATFORM_VERSION_3}    device_name=${DEVICE_NAME_2}
    Verify home screen appears
    Click sign in button
    Verify sign in success
    Input username
    Input password
    Click sign button on login page
    Sleep     3s
    Click search menu
    Verify search page
    Input flight number    booking_code=${VALID_BOOKING_CODE}
    Click search button
    Verify Search Result
    Close Flight Application