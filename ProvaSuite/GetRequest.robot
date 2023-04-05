*** Settings ***
Resource    settings.robot
Library    String

*** Variables ***
${url}=     https://stgapi.nexi.it/mfa/getlastotp?
${email}=   carta.excellence@yopmail.com
${string}=   CEAGERSGBTR OTP 374212/n<br></body></html>

*** Keywords ***
Get OTP from API Response
    [Tags]    get
    ${resp}=    GET   url=https://stgapi.nexi.it/mfa/getlastotp?user=carta.excellence@yopmail.com
    ${otp_string}=    Split String    ${resp.text}    OTP
    #${otp_string}=    Split String    ${resp}    OTP
    #${otp}=    Get Substring    ${otp_string}
    ${otp_string2}=    Split String     ${otp_string[1]}   </
    #Should Be Equal As Strings    ${otp_string2[0].strip()}    516021
    ${numero}  Set Variable    ${otp_string2[0].strip()}
    ${lista}   Split String To Characters     ${numero}
    #Log To Console        The Value is: ${lista[5]}
    Sleep    8s
    Input Text    //android.widget.RelativeLayout[1]/android.widget.RelativeLayout[1]//android.widget.EditText     ${lista[0]}
    Input Text    //android.widget.RelativeLayout[2]/android.widget.RelativeLayout//android.widget.EditText     ${lista[1]}
    Input Text    //android.widget.RelativeLayout[3]//android.widget.EditText     ${lista[2]}
    Input Text    //android.widget.RelativeLayout[4]//android.widget.EditText     ${lista[3]}
    Input Text    //android.widget.RelativeLayout[5]//android.widget.EditText     ${lista[4]}
    Input Text    //android.widget.RelativeLayout[6]//android.widget.EditText     ${lista[5]}
    Click Element    id=it.icbpi.mobile:id/second_button



#*** Test Cases ***
#Get OTP
    #[Tags]    GET
    #[Setup]   Get OTP from API Response


