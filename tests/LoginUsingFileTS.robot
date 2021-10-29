*** Settings ***
Library    DataDriver    file=../TestData/loginData.xlsx    sheet_name=loginPage
Resource    LoginResource.robot
Test setup    Open Browser with login page
Test Teardown    close browser
Test Template    Login with invalid credentials
*** Variables ***
${username}
${password}

*** Test Cases ***
Login with user ${username} and ${password}     DefaultUser    DefaultPwd


*** Keywords ***
Login with invalid credentials
    [Arguments]    ${username}    ${password}
    Input Username    ${username}
    input pwd    ${password}
    Submit Credentials