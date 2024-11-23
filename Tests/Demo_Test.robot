*** Settings ***
Library     SeleniumLibrary


Test Setup  Testi baslat
Test Teardown    Testi bitir

# robot Demo_Test.robot
*** Variables ***
${BROWSER}=             chrome
${URL}=                 https://automationteststore.com/

*** Test Cases ***
My first Test Case

   basligi bana yazdir
    sleep               3s


*** Keywords ***
Testi baslat
    open browser        ${URL}                       ${BROWSER}
    maximize browser window

Testi bitir
    close all browsers

Basligi bana yazdir
     ${Baslik}=     get title
     log            ${Baslik}