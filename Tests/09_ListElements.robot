*** Settings ***
Library    SeleniumLibrary
# robot -d Results Tests/09_ListElements.robot
# get list items
# get selected list label/value/index
# select from list label/value/index
# select all from list
# get selected list labels/values
# unselect from lis by label/index/value
# list selection should be
# list should have no selections
# page should contain list
# page should not contain list

*** Variables ***
${BROWSER}      Chrome
${URL}          https://www.w3schools.com/tags/tryit.asp?filename=tryhtml_select_multiple


*** Test Cases ***
Verify the frame is selected
    [Documentation]     This test case shows how to get a list of elements from somewhere
    [Tags]              1009    get list values

    open browser    ${URL}      ${BROWSER}
    maximize browser window
    sleep    1s
    wait until page contains    Accept

    click element    accept-choices
    sleep    1s

    select frame                        id=iframeResult



    @{all cars}=    get list items    cars

    log many    @{all cars}

    select from list by value    cars       volvo

    ${list label}   get selected list label    cars
    log     ${list label}

    ${list value}   get selected list value    cars

     log     ${list value}

    click button                Submit

    sleep               2s

    close all browsers


