*** Settings ***
Resource    ../Resources/PO/HomePage.robot
Resource    ../Resources/PO/TopNav.robot
Resource    ../Resources/PO/LoginPage.robot
Resource    ../Resources/PO/CustomerPage.robot
Resource    ../Resources/PO/AddNewCustomerPage.robot
Resource    ../Resources/PO/SignOutPage.robot

*** Variables ***


*** Keywords ***
User goes to home page
    [Arguments]                          ${URL}
    HomePage.Navigate to the website     ${URL}
    HomePage.Validate page loaded

User logins to the website
    [Arguments]                     ${EMAIL}                ${PASSWORD}
    TopNav.SignIn
    TopNav.Validate page loaded
    LoginPage.Fill in the email textbox     ${EMAIL}
    LoginPage.Fill in the password textbox  ${PASSWORD}
    LoginPage.Click submit
    CustomerPage.Validate page loaded

User adds new customer
    CustomerPage.Add new customer
    AddNewCustomerPage.Validate page loaded
    AddNewCustomerPage.Add new customer with info
    AddNewCustomerPage.Click submit button
    CustomerPage.Validate page loaded

User log out
    SignOutPage.Log out from the page
    SignOutPage.Validate page loaded