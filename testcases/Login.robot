*** Settings ***
Resource    ../pageobject/dubai/homepage.robot

*** Test Cases ***

Click and Check button Cancel
    Open Browser With Chrome
    Check Click Button
    Close Browser
