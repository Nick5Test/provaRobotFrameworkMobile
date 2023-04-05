*** Settings ***
Resource    settings.robot
Resource    keyWords.robot
Resource    SelezioneAmbiente.robot

*** Test Cases ***

LoginCorta
     Run Keyword    Open Nexipay No Clear
     Click Element      ${buttonSaveRestart}
     #Click Element    ${LOGIN-SUBMIT-BUTTON2}
     Wait Until Page Contains Element    ${textBoxPassword}
     Input Text    ${textBoxPassword}     ${Password}
     Click Element    ${buttonEntra}
     Sleep    8s
     Run Keyword    Popup Manager
     Wait Until Page Contains Element   ${visualizzaDatiCarta}




