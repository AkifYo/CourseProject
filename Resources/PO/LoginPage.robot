*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${EMAIL_TEXTBOX}=            id=email-id
${PASSWORD_TEXTBOX}=         password
${SUBMIT_BUTTON}=            Submit
*** Keywords ***


Fill in the email textbox
     [Arguments]                      ${EMAIL}
     input text              ${EMAIL_TEXTBOX}             ${EMAIL}


Fill in the password textbox
    [Arguments]                ${PASSWORD}
     input text                ${PASSWORD_TEXTBOX}        ${PASSWORD}

Click submit
    click button                    ${SUBMIT_BUTTON}