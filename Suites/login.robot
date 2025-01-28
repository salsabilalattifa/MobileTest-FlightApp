*** Settings ***
Resource        ../PageObjects/base.robot
Resource        ../PageObjects/HomePage/homePage.robot
Resource        ../PageObjects/LoginPage/loginPage.robot
Test Setup      Run Keywords    Open Flight Application    AND    Verify Home Screen Appears
Test Teardown   Close Flight Application

*** Test Cases ***
User should be able to login with valid data
    Click Sign In Button On Home Screen
    Input Username    username=support@ngendigital.com
    Input Password    password=abc123
    Click Sign In Button On Login Screen
    Verify User Successfully Login