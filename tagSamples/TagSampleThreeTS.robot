*** Settings ***
# Force Tags    ForceTagOne
Default Tags    FuncTest

**** Test Cases ***
Valid Login
     [Tags]    Req-101
     Log to Console    Valid Login ThreeTS
    
Search Item
    Log To Console    Search Item ThreeTS   
    
Place Order
    Log To Console    Place Order ThreeTS   
    
Checkout
    [Tags]    Req-101
    Log To Console    Checkout ThreeTS   
    
Logout
    Log To Console    Logout ThreeTS    