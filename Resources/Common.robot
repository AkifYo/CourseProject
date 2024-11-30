*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Keywords ***

Begin Web Test
    open browser                    about:blank             chrome
    MAXIMIZE BROWSER WINDOW


End Web Test
    close browser



