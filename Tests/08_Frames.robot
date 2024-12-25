*** Settings ***
Library    SeleniumLibrary
# robot -d Results Tests/08_Frames.robot
# select frame
# unselect frame
# frame should contain
# current frame should contain
# current frame shoould not contain

*** Variables ***
${BROWSER}      Chrome
${URL}          https://www.w3schools.com/js/tryit.asp?filename=tryjs_alert


*** Test Cases ***
Verify the frame is selected
    [Documentation]     This test case shows how to verify a frame
    [Tags]              1008    frame

    open browser    ${URL}      ${BROWSER}
    maximize browser window

    sleep   2s

    #select frame                        id=iframeResult
    #current frame should contain        JavaScript Alert
    #current frame should not contain    JavaScript Confirm Box Two
    #unselect frame
    #frame should contain    id:iframeResult     JavaScript Alert
    click element                accept-choices

    select frame                 id=iframeResult

    sleep    1s
    click button                Try it
    sleep                       2s
    close all browsers


