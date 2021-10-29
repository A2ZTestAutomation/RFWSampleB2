*** Settings ***
Library     SeleniumLibrary
Resource    commonUtil.robot
# Suite Setup    Open Browser    https://demo.seleniumeasy.com/basic-select-dropdown-demo.html    chrome
# Suite Teardown    Close Browser
Test Setup    Open Application    
Test Teardown    Close Application


*** Test Cases ***
Select SingleValue
   # Open Browser    https://demo.seleniumeasy.com/basic-select-dropdown-demo.html    chrome
    
    Select From List By Label    id:select-demo    Wednesday   
     # Close Browser

Select MultipleValues
    # Open Browser    https://demo.seleniumeasy.com/basic-select-dropdown-demo.html    chrome
    Select From List By Value    id:multi-select    Texas   
    Select From List By Label    id:multi-select    Florida
    Select From List By Index    id:multi-select    3   
    
    @{selectedValues}=    Get Selected List Values    id:multi-select
    Log Many    ${selectedValues}
    # Close All Browsers