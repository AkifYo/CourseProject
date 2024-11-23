*** Settings ***
Library  SeleniumLibrary


Test Setup    Testi baslat
Test Teardown    Testi bitir
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

    Anasayfaya git                      ${URL}
    Arama kutusuna kelime gir           ${searchbox_locate}     ${search_term}
    Arama butonuna tikla                ${search_button_locate}
    sleep               5s

*** Keywords ***

Anasayfaya git
    [Arguments]             ${URL}
    go to                   ${URL}

Arama kutusuna kelime gir
    [Arguments]         ${ARAMA_KUTUSUNUN_YERI}     ${ARAMA_KELIMESI}

    input text          ${ARAMA_KUTUSUNUN_YERI}     ${ARAMA_KELIMESI}

Arama butonuna tikla
    [Arguments]         ${BUTONUN_YERI}
    click element       ${BUTONUN_YERI}


Testi baslat
    open browser       about:blank             chrome
    maximize browser window

Testi bitir
    close all browsers