*** Settings ***
Documentation        Login page keywords related
Variables            login-page-locator.yaml

*** Keywords ***
Input Username
    [Arguments]    ${username}
    Wait Until Element Is Visible    locator=${username_login_input}
    Input Text    locator=${username_login_input} 
    ...    text=${username}

Input Password
    [Arguments]    ${password}
    Input Text    locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/password"]    
    ...    text=${password}

Click Sign In Button On Login Screen
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/signIn"]  

Verify User Successfully Login
    Wait Until Element Is Visible    locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/textView"]
