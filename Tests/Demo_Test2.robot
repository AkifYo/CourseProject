*** Settings ***
Library  SeleniumLibrary


# robot -d Results Tests/Demo_Test2.robot
*** Variables ***
${BROWSER}=                 firefox
${URL}=                     https://automationteststore.com/
${searchbox_locate}=        filter_keyword
${search_term}=             book
${search_button_locate}=    css=.fa.fa-search

*** Test Cases ***
TC 001

    [Documentation]     My searchbox test
    [Tags]              101     functional

    open browser        about:blank             ${BROWSER}
    go to                                       ${URL}
    input text          ${searchbox_locate}     ${search_term}
    click element       ${search_button_locate}
    sleep               5s

    close browser


*** Keywords ***

