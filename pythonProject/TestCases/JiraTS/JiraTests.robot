*** Settings ***
Library     Selenium2Library    timeout=10    implicit_wait=30
Resource    ../../Resources/Jirawebsite/LoginJira.robot
Resource    ../../Resources/Generic/browser.robot
Library    String
Variables   ../../PageObjects/JiraWebpage/home.py
*** Variables ***
${url}      https://robotframeworkreact.atlassian.net/
${user}     nicolas.gomes@cgi.com
${pwd}      robotframeworkisfun

*** Test Cases ***
Create a ticket in Jira in the most simple way
    [Setup]    Open my Chrome
    ${random_string}=    Generate Random String    10
    Login into Jira    ${user}    ${pwd}
    Create a new ticket    ${random_string}    ${random_string}    cash
    click click    Worked on
    [Teardown]      Close All Browsers

Create tickets in Jira with a loop
    [Documentation]  This is a loop test of 10 tickets
    [Setup]    Open my Chrome
    ${random_string}=   Generate Random String    10
    Login into Jira    ${user}    ${pwd}
    FOR  ${i}  IN RANGE    1    10
        ${random_string}=    Generate Random String    10
        Create a new ticket    ${random_string}    ${random_string}    Epic
    END
    [Teardown]      Close All Browsers

Create tickets in Jira based on types
    [Setup]    Open my Chrome
    ${random_string}=    Generate Random String    100
    Login into Jira    ${user}    ${pwd}
    FOR    ${ticket_type}    IN  Epic  Bug  Story  cash  incident
        FOR    ${i}    IN RANGE    1    5
        ${random_string}=    Generate Random String    10
        Create a new ticket    ${random_string}    ${random_string}    ${ticket_type}
        Log  ${ticket_type}
        END
    END
    [Teardown]      Close All Browsers



##################################
Create a ticket in Jira in the most simple way1
    [Setup]    Open my Chrome
    ${random_string}=    Generate Random String    15
    Login into Jira    ${user}    ${pwd}
    ${ticket_number}    ${summary}=    Create a new ticket    ${random_string}    ${random_string}    Bug
    click click    Worked on
    validate title    ${summary}    ${ticket_number}
    [Teardown]      Close All Browsers



Create a ticket in Jira in the most simple way search
    [Setup]    Open my Chrome
    ${random_string}=    Generate Random String    10
    Login into Jira    ${user}    ${pwd}
    Wait Until Element Is Visible    //div[@id='ak-jira-navigation']
    Capture Element Screenshot    //div[@id='ak-jira-navigation']
    Sleep    5
    [Teardown]      Close All Browsers