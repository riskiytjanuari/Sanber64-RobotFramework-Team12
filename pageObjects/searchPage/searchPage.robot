*** Settings ***
Library    AppiumLibrary
Variables  search-page-locators.yaml


*** Variables ***
${INVALID_BOOKING_CODE}    TESTING123

*** Keywords ***
Verify search page
    Wait Until Element Is Visible    locator=${verify_search_page}    
    
Input flight number
    Input Text    locator=${booking_code_field}    text=${INVALID_BOOKING_CODE} 

Click search button
    Click element    locator=${search_button}

Show error message
    Element Text Should Be    locator    expected_message=