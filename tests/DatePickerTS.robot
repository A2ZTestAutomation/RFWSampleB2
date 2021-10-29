*** Settings ***
Library    SeleniumLibrary    


*** Test Cases ***
Select DateFromCal
    Open Browser    https://demoqa.com/date-picker    chrome
    Maximize Browser Window
    Click Element    id:datePickerMonthYearInput
    Execute Javascript    window.scrollTo(10, 300)
    Click Prev Month    
    Click Next Month 
    Click Element     //div[@class='react-datepicker__month']//div[5]//div[2]
    ${selectedDate}    Get Element Attribute    id:datePickerMonthYearInput    value
    Should Be Equal As Strings     ${selectedDate}    10/25/2021    


Select Date User JSExec
    Open browser    http://demo.automationtesting.in/Datepicker.html    chrome
    Maximize Browser Window
    Execute Javascript    document.querySelector('#datepicker1').value='10/25/2021'
    
*** Keywords ***

Click Prev Month
    Wait Until Element Is Visible    xpath://button[@class="react-datepicker__navigation react-datepicker__navigation--previous"]    
    Click Element    xpath://button[@class="react-datepicker__navigation react-datepicker__navigation--previous"]    
    
Click Next Month
    Wait Until Element Is Visible    xpath://button[@class="react-datepicker__navigation react-datepicker__navigation--next"]    
    Click Element    xpath://button[@class="react-datepicker__navigation react-datepicker__navigation--next"]    
    