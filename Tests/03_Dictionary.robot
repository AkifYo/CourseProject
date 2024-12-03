*** Settings ***
Library    SeleniumLibrary

# https://automationplayground.com/crm/
*** Variables ***
&{USER_CREDENTIALS}     user_email=abc@gmail.com      password=qwer123


${BROWSER}      Chrome
${URL}          https://automationplayground.com/crm/


*** Test Cases ***
Login with valid credentials
    [Documentation]     this test is about variables
    [Tags]              1001    functional
    Begin web test
    Navigate to the website
    Click to Sign In
    Enter login credentials   &{USER_CREDENTIALS}
    End web test


*** Keywords ***
Begin web test
    open browser    about:blank     ${BROWSER}
    maximize browser window

Navigate to the website
    go to                           ${URL}

Click to Sign In
    click link      Sign In

Enter login credentials
    [Arguments]   &{user_credentials}
    input text    email-id          ${user_credentials.user_email}
    input text    password          ${user_credentials.password}
    click button    submit-id

End web test
    close all browsers
