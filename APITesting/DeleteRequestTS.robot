
*** Settings ***
Library    RequestsLibrary  
Library    Collections    
Library    JSONLibrary      

*** Variables ***
${base_url}   https://reqres.in/api/users

*** Test Cases ***
DeleteReqTEst
    Create Session    myDelSess    ${base_url}    
    ${response}    Delete On Session    myDelSess    /2
    Log To Console    ${response.status_code}    
    Status Should Be    204    