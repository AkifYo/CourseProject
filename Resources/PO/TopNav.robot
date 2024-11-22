*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${SIGN_IN_LINK}=             Sign In
${LOGINPAGE_HEADER}=         Login
*** Keywords ***
SignIn
     click link                     ${SIGN_IN_LINK}

Validate page loaded
    wait until page contains        ${LOGINPAGE_HEADER}

