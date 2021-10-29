*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${URL}    https://the-internet.herokuapp.com/login
${BROWSER}    headlesschrome
${btnCss}    button.radius


*** Test Cases ***
Valid LoginTest
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    # Input Text    id:username    tomsmith    
    Input Text    css:input#username    tomsmith
    Input Text    name:password    SuperSecretPassword!
    # Click Link    link:Elemental Selenium
    # Click Link    partiallink:Elemental      
    # Click Button    tag:button  
    # click button     class:radius
    
    # click button     xpath://button[@class='radius']
    # Click Link    xpath://button[@class='radius']//following::a
    click button    css:${btnCss}
    # Element Should Be Visible    css:.flash.success    
    ${successMsg}    Get Text    css:.flash.success
    Log to Console    ${successMsg}
        
# Invalid LoginTest  
    # Open Browser    ${URL}   ${BROWSER}
    # Maximize Browser Window
    # # Input Text    id:username    tomsmith    
    # Input Text    css:input#username    tom
    # Input Text    name:password     SuperSecretPassword!
    # click button    css:button.radius
    # Element Should Contain    id:flash    Your username is invalid!    
    
     