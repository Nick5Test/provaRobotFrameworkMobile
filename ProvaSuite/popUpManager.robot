*** Settings ***
Resource    settings.robot
Library    String

*** Variables ***


*** Test Cases ***
Popup Manager
${x}=    Set Variable    ${0}

  WHILE    ${x} < 5

    IF   Element Should Be Disabled    ${visualizzaDatiCarta}
        BREAK
    ELSE
     Sleep    2s
        Click Element    ${buttonChiudi}
  END
