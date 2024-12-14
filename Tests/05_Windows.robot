*** Settings ***
Library    SeleniumLibrary


# Windowss automations
*** Variables ***
${BROWSER}      Chrome
${URL}          https://the-internet.herokuapp.com/windows


*** Test Cases ***
Open different windows
    [Documentation]     This test case shows windows operation keywords in Rbf
    [Tags]              1003    windows

    open browser    ${URL}      ${BROWSER}      alias=Brwsr
    maximize browser window

    click link    Click Here

    @{WindowHandles}    get window handles

    sleep    2s

    @{WindowIdentifier}    get window identifiers

    sleep   2s

    @{WindowNames}    get window names

    sleep    2s

    @{WindowTitles}    get window titles

    sleep     2s

    ${x}    ${y} =   get window position

    log     ${x}
    log     ${y}

    sleep    2s

    set window size    1080     720



    switch window    ${WindowHandles}[1]

    sleep    2s


    switch window    ${WindowHandles}[0]
    sleep    2s

    close all browsers


