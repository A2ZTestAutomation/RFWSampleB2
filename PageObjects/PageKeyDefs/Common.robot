*** Settings ***
Library    SeleniumLibrary  
Variables    ../Locators/locators.py  

*** Keywords ***
Open Browser with HRM App
    [Arguments]    ${URL}    ${BROWSER}
    Open browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Visible    ${LoginUserName}     
    
Close HRM App
    Close All Browsers