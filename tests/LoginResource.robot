*** Settings ***
Library    SeleniumLibrary    

*** Variables ***
${URL}    https://the-internet.herokuapp.com/login
${BROWSER}    chrome
${DELAY}    10s
${VALID_USER}    tomsmith
${VALID_PWD}    SuperSecretPassword!

*** Keywords ***
Open Browser with login page
    open browser    ${URL}     ${BROWSER} 
    Maximize Browser Window
    Set Selenium Implicit Wait    10s
    Location Should Contain    login   
    
Input Username
    [Arguments]    ${username}
    input text    id:username    ${username}
    
Input Pwd    
    [Arguments]    ${password}
    Input text    id:password    ${password}
    
Submit Credentials
    Click button    css:button.radius
    
Login should have passed
    [Arguments]    ${successmsg}
    Element Should Contain    id:flash    ${successmsg}    

Login should have failed
    [Arguments]    ${errormsg}
    Element Should Contain    id:flash    ${errormsg}     