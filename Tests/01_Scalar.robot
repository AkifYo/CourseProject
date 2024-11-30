*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Common.robot

Test Setup    Begin Web Test
Test Teardown    End Web Test

# robot -d Results Tests/01_Scalar.robot

# https://automationplayground.com/crm/


*** Variables ***
#Scalar variables

${URL}          https://www.ebay.com/
${search_word}  iphone 15

*** Test Cases ***
Ebay search results
    Navigate to the website
    #Handle cookies
    Search for product
    Check the results

*** Keywords ***
Navigate to the website
    go to    ${URL}

Handle cookies
    click element    accept all

Search for product
    input text    gh-ac     ${search_word}
    click element    gh-btn

Check the results

    ${text}     get text    xpath=//button[normalize-space()='Save this search']
    log    ${text}