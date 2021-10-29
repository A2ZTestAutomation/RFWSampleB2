*** Settings ***
Library    Process    

*** Test Cases ***
Run ProcessTest
    ${result}=    Run Process    python  hello.py 
    Should Be Equal As Integers    ${result.rc}    0
    Log to console    ${result.stdout}
    Should Be Equal As Strings    ${result.stdout}    Hello Welcome    