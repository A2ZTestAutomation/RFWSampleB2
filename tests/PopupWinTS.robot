*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${URL}    https://www.stqatools.com/demo/Windows.php
${BROWSER}    chrome

*** Test Cases ***
# TabbedWindow
    # Open Browser    ${URL}    ${BROWSER}
    # Maximize Browser Window
    # ${parentWin}=     Get Window Handles
    # Log To Console    ${parentWin}  
    # Click Button    xpath://button[contains(text(), 'new Tab')]   
    # ${tabs}=     Get Window Handles
    # Log To Console    ${tabs}      
    # Switch Window    ${tabs}[1]   
    # sleep     2s
    # Click Element    (//span[@class='menu-text' and contains(text(), 'Java')])[1]
    # Close Window
    # close browser

BrowserWindow
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Click Button    xpath://button[contains(text(), 'new Window')]
    ${windowIDs}=    Get Browser Ids
    Log To Console    ${windowIDs}  
    Switch Browser    ${windowIDs}[0]
    sleep    3 s
    click button    xpath://button[contains(text(), 'Message Window')]
    sleep    2 s
   
    Close Browser
     
    
