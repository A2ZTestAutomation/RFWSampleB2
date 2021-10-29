*** Settings ***
Library    RequestsLibrary  
Library    Collections      

*** Variables ***
${base_url}    https://demoqa.com/utilities/weather/city/
${city}    chennai

*** Test Cases ***
GetCityWeatherInfo
    Create Session    myGetSess    ${base_url}
    ${response}    Get On Session    myGetSess    ${city}
    
    Log To Console    Status Code : ${response.status_code}    
    Status Should Be    200   ${response}
    
    Log To Console    Response Reason : ${response.reason}
    Should Be Equal As Strings    ${response.reason}    OK        
    
    ${resBody}    convert to String    ${response.content}
    Should Contain    ${resBody}    chennai   
    
    Log To Console    ${response.headers}[Content-Type]
    Dictionary Should Contain Key    ${response.headers}    Content-Type 
    Dictionary Should Contain Value    ${response.headers}    application/json; charset=utf-8        
    