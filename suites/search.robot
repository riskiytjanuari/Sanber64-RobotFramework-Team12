*** Settings ***
Resource    ../pageObjects/base.robot
Resource    ../pageObjects/homePage/homePage.robot
Resource    ../pageObjects/loginPage/loginPage.robot
Resource    ../pageObjects/searchPage/searchPage.robot




*** Test Cases ***
#Riski Ferdian
User search booking code with invalid data
    Open Flight Application
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
    Input flight number
    Click search button
    #Show error message
    Close Flight Application