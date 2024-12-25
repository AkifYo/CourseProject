*** Settings ***
Library    SeleniumLibrary
# robot -d Results Tests/11_MouseOperations.robot
# mouse down
# mouse down on image
# mouse down on link
# mouse up
# mouse over
# mouse out
# open context menu
# drag en drop
# drag en drop by offset
*** Variables ***
${BROWSER}      Chrome
${URL}          https://www.netflix.com/nl-en/


*** Test Cases ***
Mouse operations
    [Documentation]     This test case shows how to use mouse operations
    [Tags]              1011    mouse operations

    open browser    ${URL}      ${BROWSER}
    maximize browser window
    wait until page contains    onetrust-accept-btn-handler
    sleep    1
    click element               onetrust-accept-btn-handler

    scroll element into view    xpath://*[@data-uia="top-10-element-1"]
    sleep    2


    mouse down                  xpath://*[@data-uia="top-10-element-2"]
    sleep    2

    mouse down                  xpath://*[@data-uia="top-10-element-2"]
    sleep    2

    scroll element into view    xpath://a[@href="https://netflix.com/adchoices"]
    sleep    2

    mouse down on link          xpath://a[@href="https://help.netflix.com"]
    sleep    2

    go to                       https://demoqa.com/droppable
    sleep               1s
    #click button                xpath://*[@aria-label="Consent"]
    sleep           1s
    scroll element into view    //*[@id="draggable"]
    drag and drop               //*[@id="draggable"]         xpath://*[@id="droppable"]
    sleep    2
    close all browsers


