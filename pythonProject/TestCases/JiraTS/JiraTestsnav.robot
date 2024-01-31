*** Settings ***
Library     Selenium2Library    timeout=10    implicit_wait=30
Resource    ../../Resources/Jirawebsite/LoginJira.robot
Resource    ../../Resources/Generic/browser.robot
Library    String

*** Variables ***
${url}      https://robotframeworkreact.atlassian.net/
${user}     nicolas.gomes@cgi.com
${pwd}      robotframeworkisfun

*** Test Cases ***
Create a ticket in Jira in the most simple way
    [Setup]    Open my Chrome
    Login into Jira    ${user}    ${pwd}
    click the simple element     Assigned to me
    click the simple element     Viewed
    click the simple element     Worked on
    [Teardown]      Close All Browsers

Create a ticket in Jira in the most simple way1
    [Setup]    Open my Chrome
    Login into Jira    ${user}    ${pwd}
    click click     Assigned to me
    click click     Viewed
    click click     Worked on
    [Teardown]      Close All Browsers