*** Settings ***
Library        AppiumLibrary

*** Variables ***
${REMOTE_URL}            http://127.0.0.1:4723
${PLATFORM_NAME}         Android
${PLATFORM_VERSION}      15.0
${PLATFORM_VERSION_2}    12.0
${PLATFORM_VERSION_3}    10.0
${DEVICE_NAME}           emulator-5554
${DEVICE_NAME_2}         3201b4bdec0a165d
${APP_PACKAGE}           com.example.myapplication
${APP_ACTIVITY}          com.example.myapplication.MainActivity
${AUTOMATION_NAME}       uiautomator2

*** Keywords ***
Open Flight Application
    [Arguments]    ${platform_version}    ${device_name}
    Open Application    remote_url=${REMOTE_URL} 
    ...    platformName=${PLATFORM_NAME}
    ...    platformVersion=${PLATFORM_VERSION_2}
    ...    deviceName=${device_name} 
    ...    appPackage=${APP_PACKAGE}
    ...    appActivity=${APP_ACTIVITY}
    ...    automationName=${AUTOMATION_NAME}

Close Flight Application
    Close Application