*** Settings ***
Library    Selenium2Library

*** Variables ***
${url}  www.google.com
${browser}  chrome


*** Keywords ***
Open my Chrome
    Open Browser    ${url}      ${browser}
    ${title}=   Get Title
    Wait Until Page Contains    ${title}
    Set Window Size    1920    1080
    Maximize Browser Window
    Capture Page Screenshot