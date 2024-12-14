*** Settings ***
Library    SeleniumLibrary

# Browsers automations
*** Variables ***
${BROWSER}      Chrome
${URL}          https://automationplayground.com/crm/


*** Test Cases ***
Open different browsers
    [Documentation]     This test case shows browsers operation keywords in Rbf
    [Tags]              1002    Sample

    open browser    ${URL}      ${BROWSER}      alias=Brwsr

    maximize browser window

    open browser    about:blank     ff          alias=Brwsr2



    @{alias}    get browser aliases

    log    ${alias}[1]

    @{browser_id}   get browser ids

    log     ${browser_id}[1]

    switch browser    2

    click link    Sign In

    sleep    3s

    switch browser    ${browser_id}[1]

    go to    http://salesforce.com

    close all browsers


