*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${URL}    https://the-internet.herokuapp.com/dynamic_loading/2
${BROWSER}    chrome
${DELAY_10S}    10s

*** Keywords ***
Initialize
    open browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    
Teardown    
    Close Browser
    
SynchPageElements
    Initialize
   
    # Set Selenium Implicit Wait    10s
    Click Button    xpath://button[text()='Start']    
    # sleep     10s
    ${impWait}    Get Selenium Implicit Wait
    Log To Console    "impWait : ", ${impWait}   
    # Set Selenium Implicit Wait    10s
    # Page Should Contain Element    xpath://h4[text()='Hello World!']
        
    ${selTimeout}    Get Selenium Timeout
    Log To Console   "SelTimeout : ",${selTimeout}
        
    # Set Selenium Timeout    ${DELAY_10S}
    Wait Until Element Is Visible    xpath://h4[text()='Hello World!']
    Set Selenium Speed    15s
    

  
    Teardown

*** Test Cases ***
DynamicElementTest
    SynchPageElements