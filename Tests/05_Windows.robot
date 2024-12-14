*** Settings ***
Library    SeleniumLibrary

#robot -d Results Tests/05_Windows.robot
# Windowss automations
*** Variables ***
${BROWSER}      Chrome
${URL}          https://the-internet.herokuapp.com/windows


*** Test Cases ***
Open different windows
    [Documentation]     This test case shows windows operation keywords in Rbf
    [Tags]              1005    windows

    open browser    ${URL}      ${BROWSER}      alias=Brwsr
    maximize browser window

    click link    Click Here

    @{WindowHandles}    get window handles

    log many    @{WindowHandles}

    sleep    2s

    @{WindowIdentifier}    get window identifiers


    log many     @{WindowIdentifier}

    sleep   2s

    @{WindowNames}    get window names

    log many    @{WindowNames}
    sleep    2s

    @{WindowTitles}    get window titles

    log many    @{WindowTitles}

    sleep     2s

    ${x}    ${y} =   get window position

    log     ${x}
    log     ${y}

    sleep    2s

    set window size    800     600

    switch window    ${WindowHandles}[1]

    sleep    2s

    switch window    ${WindowHandles}[0]
    sleep    2s

    close all browsers


