*** Settings ***
Resource    settings.robot
Resource    GetRequest.robot
Resource    SelezioneAmbiente.robot

*** Test Cases ***

LoginLunga
     Run Keyword    SelezioneAmbiente
     Wait Until Page Contains Element    ${LOGIN-SUBMIT-BUTTON2}
     Click Element    ${LOGIN-SUBMIT-BUTTON2}
     Wait Until Page Contains Element    ${textBoxEmail}
     Input Text    ${textBoxEmail}    ${cartaExcellence}
     Input Text    ${textBoxPassword}    ${Password}
     Click Element    ${buttonEntra}
     Wait Until Page Contains Element    ${buttonLeggi}
     Click Element    ${buttonLeggi}
     Sleep    5s
     Click Element    	${buttonFrecciagiu}
     Wait Until Page Contains Element    ${buttonAccettaCondizioni}
     Click Element  ${buttonAccettaCondizioni}
     Sleep    15s
     Wait Until Page Contains Element   ${labelSceglineUno}
     Click Element  ${labelSceglineUno}
     Wait Until Page Contains Element   ${labelNumber00}
     Click Element  ${labelNumber00}
     Click Element  ${buttonContinua}
     Wait Until Page Contains Element   ${labelVerificaIdentita}
     Sleep    8s
     [Tags]    GET
          Run Keyword    Get OTP from API Response
          Sleep    20s
     Run Keyword    Popup Manager
     Wait Until Page Contains Element   ${visualizzaDatiCarta}




