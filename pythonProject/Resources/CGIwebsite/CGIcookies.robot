*** Settings ***
Library    Selenium2Library
Variables   ../../PageObjects/CGIwebsite/CGIcookies.py




*** Keywords ***
Make cookies dissapear cgi
    ${c}=    Get Element Count    ${accept_cookies}
    Run Keyword If    ${c}>0    Accept cgi cookies cgi


Accept cgi cookies cgi
    Sleep    2
    Capture Element Screenshot      ${accept_cookies}
    Click Element    ${accept_cookies}