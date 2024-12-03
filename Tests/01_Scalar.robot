*** Settings ***
Library    SeleniumLibrary

# https://automationplayground.com/crm/
*** Variables ***
${USER_EMAIL}           abc@gmail.com
${USER_PASSWORD}        qwer123
*** Test Cases ***



Login with valid credentials
    [Documentation]     this test is about variables
    [Tags]              1001    functional
    Begin web test
    Navigate to the website
    Click to Sign In
    Enter login credentials     ${USER_EMAIL}    ${USER_PASSWORD}
    End web test



*** Keywords ***
Begin web test
    open browser    about:blank     chrome
    maximize browser window

Navigate to the website
    go to    https://automationplayground.com/crm/

Click to Sign In
    click link      Sign In

Enter login credentials
    [Arguments]   ${user_email}     ${user_password}
    input text    email-id          ${user_email}
    input text    password          ${user_password}
    click button    submit-id

End web test
    close all browsers
