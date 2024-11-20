*** Settings ***
Library    SeleniumLibrary


*** Variables ***

*** Keywords ***
User Login
    click link                      Sign In
    wait until page contains        Login
    input text                      id=email-id         a@a.com
    input text                      id=password         123
    click button                    Submit
    wait until page contains        Our Happy Customers

Adding New Customer
    click link                      id=new-customer
    wait until page contains        Add Customer
    input text                      EmailAddress     a@b.com
    input text                      FirstName        Jane
    input text                      LastName         Rosa
    input text                      City             Houston
    select from list by value       StateOrRegion    TX
    select radio button             gender              female
    select checkbox                 promos-name
    click button                    Submit
    wait until page contains        Success! New customer added.

User Sign Out
    click link                      Sign Out
    wait until page contains        Signed Out