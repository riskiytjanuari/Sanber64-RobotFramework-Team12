*** Settings ***
Library    AppiumLibrary
Variables  search-page-locators.yaml


*** Variables ***
${VALID_BOOKING_CODE}      DA935
${INVALID_BOOKING_CODE}    TESTING123
${ERROR_MESSAGE}           Please enter valid Flight Number

*** Keywords ***
Verify search page
    Wait Until Element Is Visible    locator=${verify_search_page}    
    
Input flight number
    [Arguments]    ${booking_code}
    Input Text    locator=${booking_code_field}    text=${booking_code}

Click search button
    Click element    locator=${search_button}

Show error message
    #Wait Until Element Is Visible   locator=${error_popup}
    #Element Text Should Be    locator=${error_popup}    expected=${ERROR_MESSAGE}
    Wait Until Page Contains    Please enter valid Flight Number    5s

Verify Search Result
    Wait Until Element Is Visible    locator=${verify_result}