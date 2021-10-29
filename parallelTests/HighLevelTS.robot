*** Settings ***
Library    SeleniumLibrary    

*** Variables ***
${URL}    https://the-internet.herokuapp.com/login
${BROWSER}    chrome

*** Test Cases ***
Valid LoginTest
    Given Browser is opened with login page
    When User "tomsmith" login with password "SuperSecretPassword!"
    Then Should display success message
    
Invalid LoginTest
    Given Browser is opened with login page
    When User "tom" login with password "SuperSecret"
    Then Should display error message

*** Keywords ***
Browser is opened with login page
    open browser    ${URL}     ${BROWSER} 
    Maximize Browser Window
    Set Selenium Implicit Wait    10s
    Log to console    Url contains login
    Location Should Contain    login      
 
User "${username}" login with password "${password}"
    input text     id:username    ${username}
    input text    id:password    ${password}
    click button    css:button.radius
    
Should display success message
    Element Should Contain    id:flash    You logged into a secure area!      
 
Should display error message
    Element Should Contain    id:flash     Your username is invalid!