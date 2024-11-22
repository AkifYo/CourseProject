*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${ADDCUSTOMER_HEADER}=            Add Customer
${EMAIL_TEXTBOX}=            EmailAddress
${CUSTOMER_FIRSTNAME}=            FirstName
${CUSTOMER_LASTNAME}=            LastName
${CUSTOMER_CITY}=            City
${CUSTOMER_STATE}=            StateOrRegion
${CUSTOMER_GENDER}=            gender
${CUSTOMER_CHECKBOX}=            promos-name
${CUSTOMERADD_BUTTON}=           Submit
*** Keywords ***
Validate page loaded
    wait until page contains      ${ADDCUSTOMER_HEADER}


Add new customer with info
    input text                      ${EMAIL_TEXTBOX}            a@b.com
    input text                      ${CUSTOMER_FIRSTNAME}        Jane
    input text                      ${CUSTOMER_LASTNAME}         Rosa
    input text                      ${CUSTOMER_CITY}             Houston
    select from list by value       ${CUSTOMER_STATE}            TX
    select radio button             ${CUSTOMER_GENDER}              female
    select checkbox                 ${CUSTOMER_CHECKBOX}

Click submit button
    click button