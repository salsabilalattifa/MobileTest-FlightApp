*** Settings ***
Resource        ../PageObjects/base.robot
Resource        ../PageObjects/HomePage/homePage.robot
Resource        ../PageObjects/LoginPage/loginPage.robot
Resource        ../PageObjects/SearchPage/searchPage.robot
Test Setup      Run Keywords    Open Flight Application    AND    Verify Home Screen Appears
Test Teardown   Close Flight Application

*** Test Cases ***
# Positive Case
User can search flight number booking id
    Click Sign In Button On Home Screen
    Input Username    username=support@ngendigital.com
    Input Password    password=abc123
    Click Sign In Button On Login Screen
    Verify User Successfully Login
    Click Search Button On Home Screen
    Verify Successfully Access Search Page
    Input Flight Number    flight_number=DA935
    Click Search Button On Search Screen
    Verify Flight Number Exist

# Negative Case 
User only click search button
    Click Sign In Button On Home Screen
    Input Username    username=support@ngendigital.com
    Input Password    password=abc123
    Click Sign In Button On Login Screen
    Verify User Successfully Login
    Click Search Button On Home Screen
    Verify Successfully Access Search Page
    Click Search Button On Search Screen
    Verify Failed Search Flight Number