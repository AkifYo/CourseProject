*** Settings ***
Library    SeleniumLibrary


*** Variables ***
&{SEARCH_WORD}      book=inferno    car=audi    home=bosch
&{BROWSER}          first=chrome      second=firefox     third=edge


*** Test Cases ***
Search for product

    [Documentation]    This test is about searching an ecommers website
    [Tags]              Functional
    Begin web test
    Navigate to the website
    Search products            ${SEARCH_WORD.car}
    Validate search results
    End web test

*** Keywords ***
Begin web test
    open browser    about:blank     ${BROWSER.first}
    maximize browser window

Navigate to the website
    go to    https://www.ebay.com/

Search products
    [Arguments]    ${search_word}
    input text    gh-ac     ${search_word}
    click element    gh-btn

Validate search results
    wait until page contains    Save this search

End web test
    close all browsers