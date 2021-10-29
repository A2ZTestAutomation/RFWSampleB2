*** Settings ***
Library    RequestsLibrary  
Library    Collections    
Library    JSONLibrary      

*** Variables ***
${base_url}   https://jsonplaceholder.typicode.com
${put_url}    https://jsonplaceholder.typicode.com/posts
${bearerUrl}    https://gorest.co.in/public-api


*** Test Cases ***
# PostRequestTest
    # Create Session    myPostSess        ${base_url}    verify=true
    # &{body}    Create Dictionary    userId=5000    title=RFW    body=API Testing
    # Log To Console    ${body}    
    # &{header}    Create Dictionary    Cache-Control=no-cache
    # ${response}    Post On Session    myPostSess    /posts    data=${body}    headers=&{header}
    # Log To Console    ${response.status_code}    
    
    # ${jsonRes}    Convert JSON To String    ${response.json()}
    # Should Contain    ${jsonRes}    101
 
# PutRequestTest  
    # Create Session    myPostSess       ${put_url}    verify=true
    # &{body}    Create Dictionary    userId=5000    title=RFWTest    body=API Testing
    # Log To Console    ${body}    
    # &{header}    Create Dictionary    Cache-Control=no-cache
    # ${response}    Put On Session    myPostSess    /1    data=${body}    headers=&{header}
    # Log To Console    ${response.status_code}    
    # Log To Console    ${response.content}        

PostWithBearerToken
    create session     myPostSess    ${bearerUrl}    verify=true
    &{body}    Create Dictionary    name=TestAutomation    gender=female    email=aaaaa@gmail.com    status=Active
    &{header}    Create Dictionary    Authorization=Bearer b8c87e237c1c43cd079cbecef302025986abb7a48864a0b66d31b7742cda36ea
    ${response}    Post On Session    myPostSess    /users   data=${body}    headers=${header}
    Log To Console    ${response.status_code}
    Log to console    PostWithBearer ${response.content}
    
    
# Post WithJsonFile
    # Create session     myPostSess     ${base_url}    verify=true
       # # &{body}=  Create Dictionary  title=foo  body=bar  userId=9000
       # &{jsonContent}=    Load JSON From File    F:\\Anandhi\\workspace\\robotframework\\RFWSamplesB2\\APITesting\\postData.json
       # Log To Console    ${jsonContent}    
       # &{header}=  Create Dictionary  Cache-Control=no-cache    Content-Type=application/json
       # ${response}=     Post On Session  myPostSess     /posts      json=${jsonContent}     headers=${header}   
       # Log To Console    ${response.status_code}   
       # Log To Console    From ReponseObject ${response.content}     
              
        # ${status_code}=     convert to string     ${response.status_code}
         # Should Be Equal    ${status_code}    201
         
# # #Check id as 101 from Response Body
        # ${id}=  Get Value From Json  ${response.json()}  id
        # ${idFromList}=  Get From List   ${id}  0
        # ${idFromListAsString}=  Convert To String  ${idFromList}
        # Should be equal As Strings  ${idFromListAsString}  101   
    
    