*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${URL}    https://www.chercher.tech/practice/frames
${BROWSER}    chrome

*** Test Cases ***
NavigationTest
    open browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    ${lblText}=    Get Text    xpath://label/span
    log to console     ${lblText}
    # select frame    frame1
    # Goto Frame1
     select frame    iamframe
    
    Input Text    xpath://b[@id='topic']//following::input    Hello Welcome        

    # Frame1 to frame3
    select frame    frame3
    Select Checkbox    id:a
    Unselect Frame
    sleep     2s
    
# Back to frame1
    # Clear Element Text    xpath://b[@id='topic']//following::input
    select frame     frame1
    input text     xpath://b[@id='topic']//following::input    WELCOME BACK
    
    
    

