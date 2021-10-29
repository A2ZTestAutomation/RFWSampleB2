*** Settings ***
Library    SeleniumLibrary    
Library    AxeLibrary    

*** Test Cases ***
A11ySampleTest
    Open Browser    https://robotframework.org/    chrome
 
    &{results}    Run Accessibility Tests    AllyResult.json
    Log To Console    ${results}
    Log To Console    Voilations count : ${results.violations}   
    Log Readable Accessibility Result    violations
    Get Json Accessibility Result
         