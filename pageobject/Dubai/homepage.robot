*** Settings ***
Library  SeleniumLibrary
Resource    ../../sources/common_keywords.robot

*** Variables ***
${BTN_CANCELED_KM}      //*[@id="onesignal-slidedown-cancel-button"]


*** Keywords ***

Check Click Button
    Wait and Click Element  ${BTN_CANCELED_KM}