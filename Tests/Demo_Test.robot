*** Settings ***
Library     SeleniumLibrary
Library     String




# robot Demo_Test.robot
*** Variables ***
${BROWSER}=             chrome
${URL}=                 https://www.saucedemo.com/

*** Test Cases ***
Get the usernames
    Begin web test
    Navigate to the website
    Get the users and password
    End web test



*** Keywords ***
Begin web test
    open browser    about:blank     ${BROWSER}
    maximize browser window

Navigate to the website
    go to    ${URL}

Get the users and password

    ${users}        get text        login_credentials
    ${password}     get text        css=div.login_password

    log many    ${users}        ${password}
    ${users}=   String.fetch from right

End web test
    close all browsers