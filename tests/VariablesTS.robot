*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${ENV}    test
&{url}    qa=https://the-internet.herokuapp.com/login    test=https://www.demoblaze.com/
...    dev=https://accounts.lambdatest.com/register
*** Test Cases ***
Using EnvVariable
    Log To Console    Current User: %{USERNAME}
    Log to console    Current OS: %{OS}
    # Log to console    Current Dir: %{DIR}
    Log To Console    Java Home : %{JAVA_HOME}${/}javac  
    # open browser     ${url.dev}    chrome
    Open Browser    ${url.${ENV}}    chrome
        
# Using List
    # @{userDetails} =     Create List    John    john@gmail.com    234    India
    # Log Many   @{userDetails}      
    # Log To Console    "Name : ", ${userDetails}[0]
    # open browser     https://www.demoblaze.com/    chrome
    # sleep    2s
    # @{elementList}    Get WebElements    css:h4.card-title a
    # Log Many      @{elementList}
    # ${listLength} =     Get Length    ${elementList}
    # Log to console  "Length of list is :",${listLength}
    # FOR    ${i}    IN  @{elementList} 
        # ${elementText} =    Get Text    ${i}
        # # ${elementName}=    Get Element Attribute    ${i}    name
        # Log To Console    ${elementText} 
        # Run Keyword If    '${elementText}'== 'Nexus 6'   Click Element    ${i}
        # Exit For Loop If    '${elementText}'== 'Nexus 6'         
    # END    
    
    # close browser  

# Using Dictionary
    # &{loginDetail} =     Create Dictionary   name=Peter    pwd=welcome 
    # &{dictItems} =     Create Dictionary    a=10    b=John    c=${30,40,50}    d=${loginDetail}
    # Log To Console    "Value of a : ",${dictItems.a}    
    # Log To Console    "Value of b : ",${dictItems}[b]
    # Should Be Equal    ${dictItems}[b]    John    
    # Log To Console    "Value of c : ",${dictItems}[c][1]
    # Log To Console    "User name is : ",${dictItems}[d][name]    
    