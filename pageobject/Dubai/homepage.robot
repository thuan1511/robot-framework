*** Settings ***
Library  Selenium2Library
Resource    ../../sources/common_keywords.robot

*** Variables ***
${URL}    https://debet.com/
${alias}    user/deposit
${BROWSER}    chrome
${BTN_CANCELED_KM}      //*[@id="onesignal-slidedown-cancel-button"]
${USER_NAME}            //*[@id="header"]//form//input[@type='text']
${PASS_WORD}            //*[@id="header"]//form//input[@type='password']
${BTN_LOGIN}            //*[@id="header"]//form//button[@type='submit' and text()[normalize-space() = 'Đăng nhập']]
${BTN_NAPTIEN}          //*[@id="header"]//div[@class='header__wrap-action']//a[text()[normalize-space()='Nạp tiền']]
${BANK_BASIC}           //*[@id="bank-tab"]
${SELECT_BANK}          //*[@id="rechargeCommonBankList"]


*** Keywords ***
Open Browser With Chrome
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Check Click Button
    Wait and Click Element  ${BTN_CANCELED_KM}

Input Username and password
    Wait and Input Data    ${USER_NAME}        testjimbi01
    Wait and Input Data    ${PASS_WORD}        123456
    Wait and Click Element    ${BTN_LOGIN}

Verify Login Successfully
    Check Element Is Visible    ${BTN_NAPTIEN}

Switch Page Deposit
    Go to    ${URL}${alias}
