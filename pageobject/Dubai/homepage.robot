*** Settings ***
Library  Selenium2Library
Resource    ../../sources/common_keywords.robot

*** Variables ***
${URL}    https://debet.com/
${BROWSER}    chrome
${BTN_CANCELED_KM}      //*[@id="onesignal-slidedown-cancel-button"]


*** Keywords ***
Open Browser With Chrome
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Check Click Button
    Wait and Click Element  ${BTN_CANCELED_KM}