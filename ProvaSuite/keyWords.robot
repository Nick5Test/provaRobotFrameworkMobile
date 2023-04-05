*** Settings ***
Resource    settings.robot

*** Variables ***



*** Keywords ***
Open nexipay
    Open Application    ${DEV.APPIUM_SERVER}
    ...     platformName=android
    ...     platformVersion=${DEV.PLATFORM_VERSION}
    ...     deviceName=${DEV.DEVICE_NAME}
    ...     appPackage=${DEV.PACKAGE_NAME}
    ...     appActivity=${DEV.ACTIVITY_NAME}
    ...     automationName=UiAutomator2
    ...     newCommandTimeout=2500

Open nexipay no clear
       Open Application    ${DEV.APPIUM_SERVER}
        ...     platformName=android
        ...     platformVersion=${DEV.PLATFORM_VERSION}
        ...     deviceName=${DEV.DEVICE_NAME}
        ...     appPackage=${DEV.PACKAGE_NAME}
        ...     appActivity=${DEV.ACTIVITY_NAME}
        ...     automationName=UiAutomator2
        ...     newCommandTimeout=2500
        ...     noReset=true

Popup Manager
${x}=    Set Variable    ${0}

  WHILE    ${x} < 5
    ${x}=    Evaluate    ${x} + 1
    IF   Element Should Be Disabled    ${visualizzaDatiCarta}
        BREAK
    ELSE
     Sleep    2s
     Click Element    ${buttonChiudi}
  END
