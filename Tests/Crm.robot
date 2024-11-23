*** Settings ***
Library             SeleniumLibrary
Resource            ../Resources/Common.robot
Resource            ../Resources/CrmWebApp.robot
Test Setup          Begin Web Test
Test Teardown       End Web Test

*** Variables ***
${BROWSER}=             Chrome
${URL}=                 https://automationplayground.com/crm
${USER_EMAIL}=          a@a.com
${USER_PASSWORD}=       123

#run command      robot -d Results Tests/Crm.robot
*** Test Cases ***
Should be able to add new customer

    [Documentation]    This test is about adding new customers
    [Tags]              1006    Contacts    Smoke

    User goes to home page          ${URL}
    User logins to the website      ${USER_EMAIL}       ${USER_PASSWORD}
    User adds new customer
    User log out
    sleep  3s


*** Keywords ***

