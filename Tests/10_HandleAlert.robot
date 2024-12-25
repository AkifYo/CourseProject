*** Settings ***
Library    SeleniumLibrary
# robot -d Results Tests/10_HandleAlert.robot
# handle alert
# input text into alert
# alert should be present
# alert should not be present

*** Variables ***
${BROWSER}      Chrome
${URL}          https://www.w3schools.com/js/tryit.asp?filename=tryjs_alert


*** Test Cases ***
Operartion on jsalert
    [Documentation]     This test case shows how to handle the alerts
    [Tags]              1010    alerts

    open browser    ${URL}      ${BROWSER}
    maximize browser window
    wait until page contains    Accept
    click element    accept-choices

    select frame            id=iframeResult
    click button            xpath://body/button
    sleep                   1s
    ${message1}=            handle alert    accept
    log                     ${message1}

    go to                   ${url}
    select frame            id=iframeResult
    click button            xpath://body/button
    sleep                   1s
    ${message2}=            handle alert    accept     2s

    go to                   ${url}
    select frame            id=iframeResult
    click button            xpath://body//button
    sleep                   1s
    ${message3}=            handle alert    dismiss     2s

    go to                       https://www.w3schools.com/js/tryit.asp?filename=tryjs_prompt
    select frame                id=iframeResult
    click button                xpath://body/button
    input text into alert       RobotFrameWork      dismiss
    sleep    1s

     go to                      https://www.w3schools.com/js/tryit.asp?filename=tryjs_prompt
    select frame                id=iframeResult
    click button                xpath://body/button
    alert should be present     text=Please enter your name:
    sleep    1s

    close all browsers


