*** Settings ***
Library    SeleniumLibrary 
Variables    ../Locators/locators.py
Variables    ../TestDataFolder/LoginData.py   

*** Keywords ***
Input Username
    Input Text    ${LoginUserName}    ${Username}  
    
Input Pwd
    Input Text    ${LoginPasword}    ${Password}      
    
Click Login
    Click Element    ${LoginBtn}    