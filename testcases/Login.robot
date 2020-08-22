*** Settings ***
Resource    ../pageobject/dubai/homepage.robot

*** Test Cases ***

TC-001: Open and Login Web
    Open Browser With Chrome
    Check Click Button
    Input Username and password
    Verify Login Successfully
TC-002: Check Deposit Success
    Switch page deposit