*** Settings ***
Resource    ../PageObjects/PageKeyDefs/Common.robot
Resource    ../PageObjects/PageKeyDefs/LoginPage.robot
Resource     ../PageObjects/PageKeyDefs/HomePage.robot
Test Teardown    Close HRM App

*** Variables ***
${URL}    https://opensource-demo.orangehrmlive.com/
${BROWSER}    chrome

*** Test Cases ***
Verify Successful Login 
    Open Browser with HRM App    ${URL}      ${BROWSER}
    Input Username
    Input Pwd
    Click Login
    Verify Welcome Text
    Logout
    
    
