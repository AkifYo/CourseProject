*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Common.robot
Resource    ../Resources/CrmWebApp.robot
Test Setup          Begin Web Test
Test Teardown       End Web Test

*** Variables ***


#run command      robot -d Results Tests/Crm.robot
*** Test Cases ***

Should be able to login

    [Documentation]    This test is about loggin
    [Tags]              1003    Login    Smoke

    CrmWebApp.User Login

    sleep  5s
Should be able to add new customer

    [Documentation]    This test is about adding new customers
    [Tags]              1006    Contacts    Smoke

    CrmWebApp.User Login
    CrmWebApp.Adding New Customer
    CrmWebApp.User Sign Out
    sleep  5s


*** Keywords ***


