*** Settings ***
Library    AppiumLibrary
Variables  login-page-locators.yaml


*** Variables ***
${VALID_USERNAME}    support@ngendigital.com
${VALID_PASSWORD}    abc123

${INVALID_USERNAME}    invalid@gmail.com
${INVALID_PASSWORD}    Invalid123
${INVALID_USERNAME2}    invalid

*** Keywords ***
Verify sign in success
    Wait Until Element Is Visible    locator=${input_username}

Input username
    Input Text    locator=${input_username}    text=${VALID_USERNAME}

Input invalid_username
    Input Text    locator=${input_username}    text=${INVALID_USERNAME}

Input invalid_username2
    Input Text    locator=${input_username}    text=${INVALID_USERNAME2}

Input password
    Input Text    locator=${input_password}    text=${VALID_PASSWORD}

Input invalid_password
    Input Text    locator=${input_password}    text=${VALID_PASSWORD}

Click sign button on login page
    Click Element    locator=${sign_in_button}
    
Verify Login Failed
    Wait Until Page Contains    Invalid username/password