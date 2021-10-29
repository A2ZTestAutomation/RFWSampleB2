*** Settings ***
Resource    LoginResource.robot
Test setup    Open Browser with login page
Test Teardown    close browser
Test Template    Login with invalid credentials

*** Test Cases ***    USERNAME    PASSWORD   
Invalid Username    invalid    ${VALID_PWD}
Invalid Password    ${VALID_USER}    invalid
Invalid Username and Password    invalid    invalid
Empty Username    ${EMPTY}    invalid
Empty Password    ${VALID_USER}    ${EMPTY}
Empty Username and Password     ${EMPTY}    ${EMPTY}
# Invalid Test User1
    # Input Username    tomsmith
    # input pwd    SuperSecret
    # Submit Credentials
    # Login should have failed    Your password is invalid!
    

*** Keywords ***
Login with invalid credentials
    [Arguments]    ${username}    ${password}
    Input Username    ${username}
    input pwd    ${password}
    Submit Credentials
    
    