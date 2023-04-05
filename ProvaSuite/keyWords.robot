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
    [Arguments]     ${visualizzaDatiCarta}  ${buttonChiudi}
    ${x}=    Set Variable    ${0}
    WHILE    ${x} < 5
        Sleep    3s
        ${elementPresent}=  Run Keyword And Return Status    Element Should Be Visible  ${visualizzaDatiCarta}
        Run Keyword If    '${elementPresent}' == 'False'    Click Element    ${buttonChiudi}
        ${x}=    Evaluate    ${x} + 1
    END
