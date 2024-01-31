*** Settings ***
Library    Selenium2Library
Variables   ../../PageObjects/Atlassianwebsite/atlassian.py
Library    ../PageObjects/Atlassianwebsite/atlassian.py

*** Keywords ***

Make cookies dissapear atlassian
    ${c}=    Get Element Count    ${cookiesatlassian}
    Run Keyword If    ${c}>0    accept cookies atlassian


Accept cookies atlassian
    Sleep    2
    Capture Element Screenshot    ${cookiesatlassian}
    Click Element    ${cookiesatlassian}