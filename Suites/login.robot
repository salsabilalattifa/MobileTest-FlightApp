*** Settings ***
Resource        ../PageObjects/base.robot
Resource        ../PageObjects/HomePage/homePage.robot
Resource        ../PageObjects/LoginPage/loginPage.robot

*** Test Cases ***
User should be able to login with valid data
    Open Flight Application
    Verify Home Screen Appears
    Click Sign In Button On Home Screen
    Input Username
    Input Password
    Click Sign In Button On Login Screen
    Verify User Successfully Login
    Close Flight Application