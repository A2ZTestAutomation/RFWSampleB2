*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${URL}    https://demo.opencart.com/
${BROWSER}    chrome

*** Test Cases ***
NavigationTest
    open browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Input Text    name:search    Phone   
    
    Scroll Element Into View    xpath://img[@title='MacBook'] 
    # Execute Javascript    window.scrollTo(10, 900)
    # document.getElementsByName('firstName')[0]
    Execute Javascript    window.scrollTo(10, document.body.scrollHeight)
     click button    xpath://button[@class='btn btn-default btn-lg']
    ${pageTitle}=     Execute javascript    return document.title
    Log To Console    ${pageTitle}    
  
    
    # ${resultPage}=    Get Location
    sleep    2s
    # Capture Element Screenshot    xpath://img[@title='iPhone']    ./element.png
    Go Back
    sleep    2s
    Execute Javascript    history.go(1)
    # Log To Console    ${resultPage}    
    # Go To    ${resultPage}
    # Title Should Be    Search - Phone
    # Capture Page Screenshot    ./page.png
    
    