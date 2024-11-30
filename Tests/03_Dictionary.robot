*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Common.robot
Test Setup    Begin Web Test
Test Teardown    End Web Test


# robot -d Results Tests/03_Dictionary.robot

*** Variables ***
#Scalar variables

${URL}          https://www.ebay.com/
&{user_choise}    book=inferno       car=audi

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
    input text    gh-ac     ${user_choise.car}
    click element    gh-btn

Check the results

    ${text}     get text    xpath=//button[normalize-space()='Save this search']
    log    ${text}