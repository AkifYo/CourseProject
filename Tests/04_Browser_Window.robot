*** Settings ***
Library    SeleniumLibrary
# robot -d Results Tests/04_Browser_Window.robot
# Browsers automations
*** Variables ***
${BROWSER}      Chrome
${URL}          https://google.com


*** Test Cases ***
Open different browsers
    [Documentation]     This test case shows browsers operation keywords in Rbf
    [Tags]              1002    Sample

    open browser    ${URL}      ${BROWSER}      alias=browser
    #maximize browser window

    open browser    https://www.hepsiburada.com/     ${BROWSER}          alias=browser2

    @{alias}    get browser aliases

    log    ${alias}[1]
    log    ${alias}[0]

    @{browser_id}   get browser ids

    log     ${browser_id}[1]
    log     ${browser_id}[0]



    sleep    2s
    switch browser    browser2

    sleep    2s
    switch browser    browser

    sleep    2s
    switch browser    browser2

    close all browsers


