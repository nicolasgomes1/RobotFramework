*** Settings ***
Library    Selenium2Library
Variables   ../../PageObjects/CGIwebsite/CGIcountry.py
Library   ../../PageObjects/CGIwebsite/CGIcountry.py
*** Keywords ***
Select region
    Wait Until Element Is Visible    ${country_select}
    Click Element    ${country_select}
    Capture Page Screenshot

Select Country of choice
   [Arguments]    ${allcountries}
   ${value}    Select Country    ${allcountries}
    Wait Until Element Is Visible    ${value}
   Capture Page Screenshot
    Click Element    ${value}
   Capture Page Screenshot

Verify Country
    [Arguments]    ${allcountries2}
    ${value1}    Verify Country    ${allcountries2}
    Wait Until Element Is Visible    ${value1}
    Capture Page Screenshot
    Sleep    5
    Element Should Be Visible    ${value1}
    Capture Page Screenshot

Select MultiLanguage Country1
    [Arguments]    ${allcountries}    ${lang}    ${dash}    ${shortcut}
    ${value4}   Select Country Language    ${allcountries}    ${lang}    ${dash}    ${shortcut}
    Wait Until Element Is Visible    ${value4}
    Capture Page Screenshot
    Click Element    ${value4}
    Capture Page Screenshot

Verify Countries
    [Arguments]    ${allcountries2}
    ${value1}    Verify Country Presence      ${allcountries2}
    Wait Until Element Is Visible    ${value1}
    Capture Page Screenshot
    Element Should Be Visible    ${value1}
    Capture Page Screenshot
    Capture Element Screenshot   ${value1}