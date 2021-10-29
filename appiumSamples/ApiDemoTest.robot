*** Settings ***
Library    AppiumLibrary     

*** Variables ***
${REMOTE_URL}           http://localhost:4723/wd/hub
${PLATFORM_NAME}        Android
${PLATFORM_VERSION}        11.0
${DEVICE_NAME}        emulator-5554
# ${Activity_NAME}         com.android.calculator2.Calculator
${APP}                    F:\\AndroidDemoApk\\ApiDemos-debug.apk 
${PACKAGE_NAME}         io.appium.android.apis

*** Keywords ***
Open App 
   Open Application   http://localhost:4723/wd/hub
  ...     platformName=Android
  ...     platformVersion= 7.0
  ...     deviceName=LBFYHEPN7LGASKQS
  ...     newCommandTimeout=5000
  ...       app=${APP}
  # ...    appPackage=io.appium.android.apis
  # ...    appActivity= io.appium.android.apis.ApiDemos
    

# Open App
  # Open Application   ${REMOTE_URL}
  # ...     platformName=${PLATFORM_NAME}
  # ...     platformVersion=${PLATFORM_VERSION}
  # ...     deviceName=${DEVICE_NAME}
  # ...     automationName=UiAutomator2
  # ...     app=${APP}
  # ...     newCommandTimeout=5000
  # ...    packageName=${PACKAGE_NAME}

*** Test Cases ***
Navigate to Alert Dialog Test
    Open App
    # Set Appium Timeout    30s
     Click Element    accessibility_id=App
     sleep    3s
     Click Element    accessibility_id=Alert Dialogs
     Capture Page Screenshot    ApiDemo.png
  
 