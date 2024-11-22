*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${SIGNOUT_LINK}=                    Sign Out
${SIGNOUT_HEADER}=                  Signed Out

*** Keywords ***
Log out from the page
    click link                      ${SIGNOUT_LINK}

Validate page loaded
    wait until page contains        ${SIGNOUT_HEADER}
