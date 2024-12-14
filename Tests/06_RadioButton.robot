*** Settings ***
Library    SeleniumLibrary

# robot -d Results Tests/06_RadioButton.robot
# Windowss automations
*** Variables ***
${BROWSER}      Chrome
${URL}          https://practice.expandtesting.com/radio-buttons


*** Test Cases ***
Verify the radio button is clicked
    [Documentation]     This test case shows how to verufy a radio button
    [Tags]              1005    radio button

    open browser    ${URL}      ${BROWSER}

    maximize browser window

    page should contain radio button    red

    sleep               2s

    Execute JavaScript    window.scrollBy(0, 500)

    sleep               2s
    click element       red

    sleep               2s

    click element    blue

    sleep               2s

    select radio button    color    black

    sleep    2s

    #select radio button    sport    football

    radio button should be set to    sport  basketball

    ${tennis_secildimi}=     radio button should not be selected     sport
    log         ${tennis_secildimi}

    sleep    2s

    close all browsers


