*** Settings ***
Documentation        Login page keywords related

*** Keywords ***
Input Username
    Wait Until Element Is Visible    locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/username"]
    Input Text    locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/username"]    
    ...    text=support@ngendigital.com

Input Password
    Input Text    locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/password"]    
    ...    text=abc123

Click Sign In Button On Login Screen
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/signIn"]  

Verify User Successfully Login
    Wait Until Element Is Visible    locator=//android.widget.TextView[@resource-id="com.example.myapplication:id/textView"]
