*** Settings ***
Library    AppiumLibrary
Library    RequestsLibrary


*** Variables ***
${DEV.APPIUM_SERVER} =  http://127.0.0.1:7083/wd/hub
${DEV.PLATFORM_VERSION} =  10
${DEV.DEVICE_NAME} =    ANA NX9
${DEV.PACKAGE_NAME} =   it.icbpi.mobile
${DEV.ACTIVITY_NAME} =  it.icbpi.mobile.feature.launchmode.LaunchModeActivity
${PLATFORM NAME} =      Android

${labelSettings} =  //android.widget.TextView[@text="SETTINGS"]
${buttonSaveRestart} =  //android.widget.Button[@text="SAVE & RESTART"]

${LOGIN-SUBMIT-BUTTON} =    it.icbpi.mobile:id/
${LOGIN-SUBMIT-BUTTON2} =   //android.widget.TextView[@text="ACCEDI"]
${LOGIN-SUBMIT-BUTTON3} =   it.icbpi.mobile:id/ENTRA

${textBoxEmail} =   //android.widget.EditText[@text="Email"]
${textBoxPassword} =    //android.widget.EditText[@text="Password"]
${buttonEntra} =    //android.widget.Button[@text="ENTRA"]
${buttonLeggi} =   id=it.icbpi.mobile:id/second_button
${buttonFrecciagiu} =   //hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.Button
${buttonAccettaCondizioni} =    //android.widget.Button[@text="ACCETTA LE CONDIZIONI"]
${labelSceglineUno} =   //android.widget.TextView[@text="Scegline uno"]
${labelNumber00} =  //android.widget.TextView[@text="********00"]
${buttonContinua} =     //android.widget.Button[@text="CONTINUA"]
${labelVerificaIdentita} =  //android.widget.TextView[@text="VERIFICA D'IDENTITÀ"]
${visualizzaDatiCarta} =    //android.widget.TextView[@content-desc="VISUALIZZA DATI CARTA button"]

${buttonChiudi} =   	//android.widget.ImageView[@content-desc="Chiudi"]

${cartaExcellence} =      carta.excellence@yopmail.com
${Password} =    Cartasi02



