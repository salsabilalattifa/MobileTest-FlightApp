*** Settings ***
Library              AppiumLibrary
Documentation        Search page keywords related
Variables            search-page-locator.yaml

*** Keywords ***
Click Search Button On Home Screen
    CLick Element    locator=${search-button}

Verify Successfully Access Search Page
    Wait Until Element Is Visible    locator=${search_page}
    Element Should Contain Text    locator=${search_page}    
    ...    expected=${text_search_page}    
    ...    message=Text tidak ditemukan!

Input Flight Number
    Wait Until Element Is Visible    locator=${flight_number_input} 
    [Arguments]    ${flight_number}
    Input Text    locator=${flight_number_input}    
    ...    text=${flight_number}

Click Search Button On Search Screen
    Wait Until Element Is Visible    locator=${button_search_page}
    Click Element    locator=${button_search_page}  

Verify Flight Number Exist
    Wait Until Element Is Visible    locator=${table}
    Element Should Be Visible    locator=${table}    

Verify Failed Search Flight Number
    Wait Until Page Contains    Please enter valid Flight Number
        
