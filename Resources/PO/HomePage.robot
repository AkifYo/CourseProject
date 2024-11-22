*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${HOMEPAGE_HEADER_LABEL}=      Customers Are Priority One!

*** Keywords ***

Navigate to the website
    [Arguments]                     ${URL}
    go to       ${URL}
    maximize browser window


Validate page loaded
    wait until page contains        ${HOMEPAGE_HEADER_LABEL}




