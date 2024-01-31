*** Settings ***
Library    Selenium2Library
Variables    ../../PageObjects/JiraWebpage/login.py
Library    ../../PageObjects/JiraWebpage/login.py
Resource    ../../RF/Lib/site-packages/Selenium2Screenshots/keywords.robot
Library     re
Variables   ../../PageObjects/JiraWebpage/home.py
Library   ../../PageObjects/JiraWebpage/home.py
*** Keywords ***
Login into Jira
    [Arguments]    ${email_value}    ${password_value}
    Click Element    ${email}
    Press Keys    ${email}    ${email_value}
    Element Attribute Value Should Be    ${email}    value    ${email_value}
    Capture Element Screenshot    ${email}
    Click Element    ${submit}
    Capture Element Screenshot    ${submit}
    Click Element    ${password}
    Press Keys    ${password}    ${password_value}
    Element Attribute Value Should Be    ${password}    value    ${password_value}
    Capture Element Screenshot    ${password}
    Click Element    ${submit}
    Wait Until Element Is Visible    ${navcluster}


Create a new ticket
    [Arguments]    ${mysummary}    ${mydescription}    ${issuetype1}
    Sleep    2
    Click Element    ${navcluster}
    Scroll Element Into View    ${summaryfield}
    Click Element   ${summaryfield}
    Press Keys     ${summaryfield}    ${mysummary}
    Click Element    ${issuetype}

    ${a}    Select issue type    ${issuetype1}
    Click Element    ${a}

    Scroll Element Into View    ${description}
    Capture Element Screenshot   ${description}
    Click Element    ${description}
    Press Keys    ${description}    ${mydescription}
    Capture Element Screenshot    ${form}
    Click Element    ${createticket}
    Sleep    2
    #the worst offender is atlassian with no id where it matters in the div
    Wait Until Element Is Visible    ${ticket_created_validation}
    Capture Element Screenshot    ${ticket_created_validation}
    #get part of the string
    ${text}    Get Text    ${ticket_created_validation_message}
    ${parts}    Split String    ${text}    "
    ${ticket_number}    Set Variable    ${parts[1]}
    Log    Ticket Number: ${ticket_number}
    Click Element    ${dismiss_ticket_message}
    Sleep    1
    Capture Page Screenshot
    ${ticket_number}    Set Variable    ${ticket_number}
    ${mysummary}    Set Variable    ${mysummary}
    [Return]    ${ticket_number}    ${mysummary}

click the simple element
    [Arguments]    ${tabs}
    ${mytab}    Select tab    ${tabs}
    Click Element    ${mytab}
    ${id}    Get Element Attribute    ${mytab}    id
    
validate title
    [Arguments]    ${mysummary}     ${ticket_number}
    ${xx}   verify ticket in home page    ${mysummary}
    Element Text Should Be    ${xx}    ${mysummary}
    Capture Element Screenshot    ${xx}
    Log    ${mysummary}
    ${xxx}   verify ticket project    ${ticket_number}
    Element Text Should Be    ${xxx}    ${ticket_number}
    Capture Element Screenshot    ${xxx}
    Log    ${ticket_number}
    Click Element    ${xx}
    Sleep    5
    Capture Element Screenshot    ${ticket_panel}
    Capture Element Screenshot    ${ticket_detail}
    Capture Element Screenshot    ${ticket_title_header}
    Capture Element Screenshot    ${ticket_title_header1}

click click
    [Arguments]    ${tabs}
    ${mytab}    Select tab    ${tabs}
    Click Element    ${mytab}
    ${id}    Get Element Attribute    ${mytab}    id
    ${tab}    ${xpath}    my_home_tab    ${tabs}    ${id}
    Reload Page
    Capture Element Screenshot    ${xpath}


capture screen
    Click Element    ${navcluster}
    Capture Element Screenshot    ${form}
    Scroll Element Into View    ${createticket}
    Capture Element Screenshot    ${createticket}
    Scroll Element Into View     ${summaryfield}
    Capture Page Screenshot    ${summaryfield}
    Scroll Element Into View    ${description}
    Capture Element Screenshot    ${description}