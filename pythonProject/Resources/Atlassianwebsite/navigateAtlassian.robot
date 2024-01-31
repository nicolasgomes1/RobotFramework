*** Settings ***
Library    Selenium2Library
Variables   ../../PageObjects/Atlassianwebsite/atlassian.py
Library    ../../PageObjects/Atlassianwebsite/atlassian.py
Resource    ../CGIwebsite/CGIcookies.robot

*** Keywords ***
Select Atlassian footer links
    [Arguments]    ${link}
    ${ab}   Select Atlassian Link   ${link}
    Scroll Element Into View     ${ab}
    Capture Element Screenshot    ${ab}
    Click Element    ${ab}


Select Atlassian header links
    [Documentation]    This is a sample
    [Arguments]    ${link1}
    ${b}    Select Header menu    ${link1}
    Scroll Element Into View     ${b}
    Capture Element Screenshot    ${b}
    Click Element    ${b}
    Capture Page Screenshot


Verification correct page
    [Arguments]    ${title}    ${space}
    ${c}    Verify Correct Title page    ${title}    ${space}
    Capture Element Screenshot    ${c}
    Element Should Contain    ${c}    ${title}