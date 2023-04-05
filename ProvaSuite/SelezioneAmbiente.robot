*** Settings ***

Resource    keyWords.robot

*** Keywords ***
SelezioneAmbiente
    Open Nexipay
         Wait Until Page Contains Element    ${labelSettings}
         Click Element    id=android:id/text1
         Wait Until Page Contains Element    //android.widget.CheckedTextView[@text="Staging"]
         Click Element    //android.widget.CheckedTextView[@text="Staging"]
         Click Element    //android.widget.Switch[@class="android.widget.Switch"]
         Click Element    ${buttonSaveRestart}
         Wait Until Page Contains Element    //android.widget.Button[@text="ACCONSENTO"]
         Click Element    //android.widget.Button[@text="ACCONSENTO"]
         Sleep    8s


