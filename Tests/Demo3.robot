*** Settings ***
Library    SeleniumLibrary

*** Variables ***
#Scaler variables
${MYNAME} =     akif

@{MYLIST} =         1    akif    ders    true

&{MYVALUES}=        isim =akif  soyisim=yorulmaz    il=ankara

*** Test Cases ***

My variables
    log         ${MYNAME}
    log         ${MYLIST}[1]
    log many    @{MYLIST}
    log         ${MYVALUES.isim}
    log         ${MYVALUES.soyisim}
    log         ${MYVALUES.il}



*** Keywords ***
