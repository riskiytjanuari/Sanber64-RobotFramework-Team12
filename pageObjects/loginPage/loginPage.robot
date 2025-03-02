*** Settings ***
Library    AppiumLibrary
Variables  login-page-locators.yaml


*** Variables ***
${VALID_USERNAME}    support@ngendigital.com
${VALID_PASSWORD}    abc123


*** Keywords ***
Verify sign in success
    Wait Until Element Is Visible    locator=${input_username}

Input username
    Input Text    locator=${input_username}    text=${VALID_USERNAME}

Input password
    Input Text    locator=${input_password}    text=${VALID_PASSWORD}

Click sign button on login page
    Click Element    locator=${sign_in_button}