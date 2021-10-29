*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
CheckBox Test
  
    Open Browser    https://the-internet.herokuapp.com/checkboxes    chrome
    Maximize Browser Window
    Select Checkbox    xpath://input[@type='checkbox'][2]
     Select Checkbox    xpath://input[@type='checkbox'][2]
    Checkbox Should Not Be Selected    xpath://input[@type='checkbox'][1]
     Unselect Checkbox    xpath://input[@type='checkbox'][2]    

RadioBtn Test
    Open Browser    https://demo.seleniumeasy.com/basic-radiobutton-demo.html    chrome
    Maximize Browser Window
    sleep    2s
    Select Radio Button    gender     Male
    # Select Radio Button    group_name    value
    ${gender}=    Get Element Attribute    gender    value
    Log To Console    ${gender}    
    Select Radio Button    ageGroup    0 - 5
    Radio Button Should Not Be Selected    gender
 