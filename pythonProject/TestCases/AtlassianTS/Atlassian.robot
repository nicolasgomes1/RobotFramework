*** Settings ***
Library           BuiltIn
Library     Selenium2Library    timeout=5    implicit_wait=5
Resource    ../../Resources/Generic/browser.robot
Resource    ../../Resources/Atlassianwebsite/Acceptcookies.robot
Resource    ../../Resources/Atlassianwebsite/navigateAtlassian.robot



*** Variables ***
${url}      https://atlassian.com
*** Test Cases ***
Go to Products Jira Software Features
    [Tags]    Jira Software Features
    [Setup]    Open my Chrome
    Make cookies dissapear atlassian
    Select Atlassian footer links   Jira Software
    Capture Page Screenshot
    Select Atlassian header links    Features
    Capture Page Screenshot
    Verification correct page    How agile teams build and support world class software    ${EMPTY}
    Verification correct page    Get it free    ${space}
    Verification correct page    Jira Software features    ${space}
    [Teardown]    Close All Browsers

Go to Products Jira Software Product Guide
    [Tags]    Jira Software Product Guide
    [Setup]    Open my Chrome
    Make cookies dissapear atlassian
    Select Atlassian footer links   Jira Software
    Capture Page Screenshot
    Select Atlassian header links    Product guide
    Capture Page Screenshot
    Verification correct page    Everything you need to know about buying, using, and customizing Jira Software.    ${EMPTY}
    Verification correct page    Jira Software guides and tutorials    ${space}
    [Teardown]    Close All Browsers

Go to Products Jira Software Templates
    [Tags]    Jira Software Templates
    [Setup]    Open my Chrome
    Make cookies dissapear atlassian
    Select Atlassian footer links   Jira Software
    Capture Page Screenshot
    Select Atlassian header links    Templates
    Capture Page Screenshot
    Verification correct page     There’s a Jira template for that    ${space}
    Verification correct page    Choose from dozens of pre-configured Jira templates, spanning teams, departments, and categories, to guide your team’s next project to success.    ${EMPTY}
    [Teardown]    Close All Browsers


Go to Products Jira Software Pricing
    [Tags]    Jira Software Pricing
    [Setup]    Open my Chrome
    Make cookies dissapear atlassian
    Select Atlassian footer links   Jira Software
    Capture Page Screenshot
    Select Atlassian header links    Pricing
    Capture Page Screenshot
    [Teardown]    Close All Browsers

Go to Products Jira Software Enterprise
    [Tags]    Jira Software Enterprise
    [Setup]    Open my Chrome
    Make cookies dissapear atlassian
    Select Atlassian footer links   Jira Software
    Capture Page Screenshot
    Select Atlassian header links    Enterprise
    Capture Page Screenshot
    Verification correct page    Agile, integrated development at scale     ${space}
    Verification correct page    Cloud Enterprise     ${space}
    Verification correct page    Our top-tier plan expands on the    ${EMPTY}
    Capture Page Screenshot
    [Teardown]    Close All Browsers

Go to Jira Align
    [Setup]    Open my Chrome
    Make cookies dissapear atlassian
    Select Atlassian footer links   Jira Align
    Capture Page Screenshot
    Select Atlassian header links    Solutions
    Verification correct page    Accelerate strategy and unlock your agile potential    ${space}
    Capture Page Screenshot
    [Teardown]    Close All Browsers


Navigation Test
    [Setup]    Open my Chrome
    Make cookies dissapear atlassian
    Select Atlassian footer links   Jira Software
    Select Atlassian header links    Features
    Select Atlassian header links    Product guide
    Select Atlassian header links    Templates
    Go Back
    Select Atlassian header links    Pricing
    Select Atlassian header links    Enterprise

    Select Atlassian footer links   Jira Align
    Select Atlassian header links    Solutions
    Select Atlassian header links    Platform
    Select Atlassian header links    Resources
    Select Atlassian header links    Services
    Select Atlassian header links    Pricing

    Select Atlassian footer links   Jira Service Management

    Select Atlassian footer links   Confluence
    Select Atlassian header links    Features
    Select Atlassian header links    Product guide
    Select Atlassian header links    Templates
    Select Atlassian header links    Pricing
    Select Atlassian header links    Enterprise
    [Teardown]    Close All Browsers

