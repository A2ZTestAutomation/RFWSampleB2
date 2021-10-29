*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${URL}    https://demo.seleniumeasy.com/javascript-alert-box-demo.html
${BROWSER}    chrome

*** Test Cases ***
Valid LoginTest
    Open Browser    ${URL}    ${BROWSER}
    Click Button    xpath:(//button[contains(text(), 'Click me')])[1]    
       Handle Alert    Accept
    
    Click Button    xpath:(//button[contains(text(), 'Click me')])[2]
    # Handle Alert     Dismiss    
    ${alertMsg}    Handle Alert  accept  
    Log To Console    ${alertMsg}    
    Should Be Equal As Strings    ${alertMsg}    Press a button!        

    Click Button    xpath:(//button[contains(text(), 'Prompt')])
    Input Text Into Alert    Hello Welcome    
    # Handle Alert    dismiss
      