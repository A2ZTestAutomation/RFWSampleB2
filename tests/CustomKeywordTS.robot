
*** Test Cases ***
Add Test
    ${sumValue}=    Add two numbers    30    40 
    Log To Console    "Sum is : ", ${sumValue}    
     ${nickName}    Change Nickname    TestUser    RobotTestUser   
    Print log    ${nickName}    True
    
*** Keywords ***
Add two numbers
    [Arguments]    ${value1}    ${value2}
     ${sum}    Evaluate    ${value1}+${value2}
     [return]    ${sum}  
     
Change Nickname
    [Arguments]    ${oldname}    ${newname}
    [return]    ${newname}
    
Print Log
    [Arguments]    ${anyText}=Hello    ${flag}=False
    Run Keyword If    ${flag}    Log To Console    ${anyText}        
    ...    ELSE    Log    ${anyText}     