*** Settings ***
Library    AppiumLibrary
Library    RequestsLibrary
Suite Setup    Open nexipay
Suite Teardown    Close Application
Resource    GetRequest.robot

*** Variables ***

${DEV.APPIUM_SERVER} =  http://127.0.0.1:7083/wd/hub
${DEV.PLATFORM_VERSION} =  10
${DEV.DEVICE_NAME} =    ANA NX9
${DEV.PACKAGE_NAME} =   it.icbpi.mobile
${DEV.ACTIVITY_NAME} =  it.icbpi.mobile.feature.launchmode.LaunchModeActivity

${LOGIN-SUBMIT-BUTTON} =    it.icbpi.mobile:id/
${LOGIN-SUBMIT-BUTTON2} =   //android.widget.TextView[@text="ACCEDI"]
${LOGIN-SUBMIT-BUTTON3} =   it.icbpi.mobile:id/ENTRA

${Email} =      carta.excellence@yopmail.com
${Password} =    Cartasi02

${DEVICE_WIDTH} =   1080
${DEVICE_HEIGHT} =  2340

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

Scroll Page Down
         ${start_x}=    Evaluate   0.5*${DEVICE_WIDTH}
         ${start_y}=    Evaluate    0.9*${DEVICE_HEIGHT}
         ${end_x}=      Evaluate    0.5*${DEVICE_WIDTH}
         ${end_y}=      Evaluate    0.5*${DEVICE_HEIGHT}
         Swipe  ${start_x}   ${start_y}   ${start_x}   ${start_y}

Get API Data
         ${response}=    GET Request    https://jsonplaceholder.typicode.com/posts
         Should Be Equal As Strings    ${response.status_code}    200
         Log    ${response.content}

*** Test Cases ***

Open Application

     Open Application    ${DEV.APPIUM_SERVER}
        ...     platformName=android
        ...     platformVersion=${DEV.PLATFORM_VERSION}
        ...     deviceName=${DEV.DEVICE_NAME}
        ...     appPackage=${DEV.PACKAGE_NAME}
        ...     appActivity=${DEV.ACTIVITY_NAME}
        ...     automationName=UiAutomator2
        ...     newCommandTimeout=2500

     Wait Until Page Contains Element    //android.widget.TextView[@text="SETTINGS"]
     Click Element    id=android:id/text1
     Wait Until Page Contains Element    //android.widget.CheckedTextView[@text="Staging"]
     Click Element    //android.widget.CheckedTextView[@text="Staging"]
     Click Element    //android.widget.Switch[@class="android.widget.Switch"]
     Click Element    //android.widget.Button[@text="SAVE & RESTART"]
     Wait Until Page Contains Element    //android.widget.Button[@text="ACCONSENTO"]
     Click Element    //android.widget.Button[@text="ACCONSENTO"]
     Wait Until Page Contains Element    ${LOGIN-SUBMIT-BUTTON2}
     Click Element    ${LOGIN-SUBMIT-BUTTON2}
     Wait Until Page Contains Element    //android.widget.EditText[@text="Email"]
     Input Text    //android.widget.EditText[@text="Email"]     ${Email}
     Input Text    //android.widget.EditText[@text="Password"]     ${Password}
     Click Element    //android.widget.Button[@text="ENTRA"]
     Wait Until Page Contains Element    id=it.icbpi.mobile:id/second_button
     Click Element    id=it.icbpi.mobile:id/second_button
     Sleep    5s
     Click Element    	//hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.Button
     Wait Until Page Contains Element    //android.widget.Button[@text="ACCETTA LE CONDIZIONI"]
     Click Element  //android.widget.Button[@text="ACCETTA LE CONDIZIONI"]
     Sleep    8s
     Wait Until Page Contains Element   //android.widget.TextView[@text="Scegline uno"]
     Click Element  //android.widget.TextView[@text="Scegline uno"]
     Wait Until Page Contains Element   //android.widget.TextView[@text="********00"]
     Click Element  //android.widget.TextView[@text="********00"]
     Click Element  //android.widget.Button[@text="CONTINUA"]
     Wait Until Page Contains Element   //android.widget.TextView[@text="VERIFICA D'IDENTITÀ"]
     Sleep    8s
     [Tags]    GET
          Run Keyword    Get OTP from API Response
          Sleep    8s
          Wait Until Page Contains Element   //android.widget.TextView[@content-desc="VISUALIZZA DATI CARTA button"]
#*** Test Cases ***
#Get OTP



