
*** Settings ***
Library    RequestsLibrary  
Library    Collections   
Library    JSONLibrary    

*** Variables ***
${base_url}    http://postman-echo.com
${bearerUrl}    https://gorest.co.in/public-api/users
${git_url}    https://api.github.com

*** Test Cases ***
BasicAuthWithUserId
    ${auth_list}    Create L ist    postman    password
    Create Session    myGetSess    ${base_url}      auth=${auth_list}
    ${response}    Get On Session    myGetSess     /basic-auth
    Log To Console    ${response.status_code}    
    Log To Console    Using Basic : ${response.content}
    
OAuthReques
     &{auth_list}    Create Dictionary    authorization=Token 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
    Create session     myAuth2     ${git_url}    headers=${auth_list}
   
    ${response}    Get on session    myAuth2    /user/repos    
    Log to console    ${response.status_code}
    Log To Console    Using oauth2 : ${response.content} 
       
      
BearerTokenAuth
    &{auth}    Create Dictionary    Authorization=Bearer b8c87e237c1c43cd079cbecef302025986abb7a48864a0b66d31b7742cda36ea
    Create Session    myGetSess    ${bearerUrl}     
    ${response}    Get On Session    myGetSess     /45     headers=${auth}    
    Log To Console    ${response.status_code}    
    Log To Console    UsingBearerToken : ${response.content}