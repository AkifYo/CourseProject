*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${CUSTOMERPAGE_HEADER}=             Our Happy Customers
${NEWCUSTOMER_LINK}=                id=new-customer

*** Keywords ***

Validate page loaded
    wait until page contains        ${CUSTOMERPAGE_HEADER}


Add new customer
     click link                      ${NEWCUSTOMER_LINK}
