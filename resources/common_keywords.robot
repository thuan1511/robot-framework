*** Settings ***
Library  Selenium2Library


*** Keywords ***
Wait and Input Data
    [Arguments]     ${locator}  ${text}
    Wait Until Element Is Visible   ${locator}  10
    Input Text  ${locator}  ${text}

Wait and Click Element
    [Arguments]     ${locator}
    Wait Until Element Is Visible   ${locator}      10
    Click Button    ${locator}