*** Settings ***
Library     SeleniumLibrary



# robot Demo_Test.robot
*** Variables ***



*** Test Cases ***
My first Test Case
    open browser        https://automationteststore.com/        chrome
    ${Title}=           get title
    log                 ${Title}
    sleep               3s
    close browser

*** Keywords ***
