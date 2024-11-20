*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Keywords ***
Begin Web Test
    open browser                    about:blank             chrome
    go to                           https://automationplayground.com/crm
    maximize browser window
    wait until page contains        Customers Are Priority One!

End Web Test
    close browser