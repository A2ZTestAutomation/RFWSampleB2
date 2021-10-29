*** Settings ***
Library    SeleniumLibrary 
Variables    ../Locators/locators.py
Variables    ../TestDataFolder/LoginData.py   

*** Keywords ***
Verify Welcome Text
    Element Should Be Visible    ${WelcomeMsg}    
    
Logout
    Click Element    ${WelcomeMsg}     
    Wait Until Element Is Visible    ${Logout}    
    Click Element    ${Logout}
    Wait Until Element Is Visible    ${LoginUserName}       