*** Settings ***
Library    SeleniumLibrary
# robot -d Results Tests/07_CheckBox.robot
# select checkbox
# unselect checkbox
# checkbox should be selected
# checkbox should not be selected
# page should contain checkbox
# page should not contain checkbox
*** Variables ***
${BROWSER}      Chrome
${URL}          https://www.ebay.com/


*** Test Cases ***
Verify the checkbox is clicked
    [Documentation]     This test case shows how to verify a checkbox
    [Tags]              1007    checkbox

    open browser    ${URL}      ${BROWSER}
    maximize browser window

    #sleep   200s
    sleep    1s
    click button    gdpr-banner-accept

    input text    gh-ac     lego

    click element    gh-btn
    sleep    1s

    Execute JavaScript    window.scrollBy(0, 200)

    click element    xpath=//span[contains(text(), 'CITY')][1]

    checkbox should be selected    //div/span/input[1]

    sleep    1s

    close all browsers


