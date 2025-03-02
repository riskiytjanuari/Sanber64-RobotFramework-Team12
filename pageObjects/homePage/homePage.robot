*** Settings ***
Library    AppiumLibrary
Variables    home-page-locators.yaml

*** Keywords ***
# home page at non login state
Verify home screen appears
    Wait Until Element Is Visible    locator=${verify_home_page}


Click sign in button
    Click Element    locator=${login_button}

# home page at login state
Verify can login with valid username
    Wait Until Element Is Visible    locator=${verify_login_success} 

Click search menu
    Click Element    locator=${search_menu}


