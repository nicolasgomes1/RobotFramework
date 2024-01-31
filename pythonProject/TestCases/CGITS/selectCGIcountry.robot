*** Settings ***
Library     Selenium2Library     timeout=5    implicit_wait=5
Resource    ../../Resources/CGIwebsite/CGIcookies.robot
Resource    ../../Resources/Generic/browser.robot
Resource    ../../Resources/CGIwebsite/CGIcountry.robot


*** Variables ***
${url}  https://cgi.com

*** Test Cases ***
Test 1-Colombia
    [Setup]     Open my Chrome
    Make cookies dissapear cgi
    Select region
    Select Country of choice    Colombia
    Verify Countries    Colombia
    [Teardown]      Close All Browsers

Test 2-United States
    [Tags]    United States    Americas
    [Setup]    Open my Chrome
    Make cookies dissapear cgi
    Select region
    Select Country    United States
    [Teardown]    Close All Browsers


Test 3-Australia
    [Tags]    Australia    AsiaPacific
    [Setup]    Open my Chrome
    Make cookies dissapear cgi
    Select region
    Select Country    Australia
    [Teardown]    Close All Browsers

Test 4-India
    [Tags]    India    AsiaPacific
    [Setup]    Open my Chrome
    Make cookies dissapear cgi
    Select region
    Select Country    India
    [Teardown]    Close All Browsers

Test 5-Malaysia
    [Tags]    Malaysia    AsiaPacific
    [Setup]    Open my Chrome
    Make cookies dissapear cgi
    Select region
    Select Country    Malaysia
    [Teardown]    Close All Browsers


Test 6-Philippines
    [Tags]    Philippines    AsiaPacific
    [Setup]    Open my Chrome
    Make cookies dissapear cgi
    Select region
    Select Country    Philippines
    [Teardown]    Close All Browsers


Test 7-Maroc
    [Tags]    Maroc    Africa
    [Setup]    Open my Chrome
    Make cookies dissapear cgi
    Select region
    Select Country    Maroc
    [Teardown]    Close All Browsers


Test 8-Belgium
    [Tags]    Belgium    Europe
    [Setup]    Open my Chrome
    Make cookies dissapear cgi
    Select region
    Select Country    Belgium
    [Teardown]    Close All Browsers


Test 9-Česká republika
    [Tags]    Česká republika    Europe
    [Setup]    Open my Chrome
    Make cookies dissapear cgi
    Select region
    Select Country    Česká republika
    [Teardown]    Close All Browsers

Test 10-Denmark
    [Tags]    Denmark    Europe
    [Setup]    Open my Chrome
    Make cookies dissapear cgi
    Select region
    Select Country    Denmark
    [Teardown]    Close All Browsers


Test 11-Deutschland
    [Tags]    Deutschland    Europe
    [Setup]    Open my Chrome
    Make cookies dissapear cgi
    Select region
    Select Country    Deutschland
    [Teardown]    Close All Browsers

Test 12-Eesti
    [Tags]    Eesti    Europe
    [Setup]    Open my Chrome
    Make cookies dissapear cgi
    Select region
    Select Country    Eesti
    [Teardown]    Close All Browsers

Test 13-España
    [Tags]    España    Europe
    [Setup]    Open my Chrome
    Make cookies dissapear cgi
    Select region
    Select Country    España
    [Teardown]    Close All Browsers

Test 14-France
    [Tags]    France    Europe
    [Setup]    Open my Chrome
    Make cookies dissapear cgi
    Select region
    Select Country    France
    [Teardown]    Close All Browsers

Test 15-Italy
    [Tags]    Italy    Europe
    [Setup]    Open my Chrome
    Make cookies dissapear cgi
    Select region
    Select Country    Italy
    [Teardown]    Close All Browsers

Test 16-Latvijā
    [Tags]    Latvijā    Europe
    [Setup]    Open my Chrome
    Make cookies dissapear cgi
    Select region
    Select Country    Latvijā
    [Teardown]    Close All Browsers

Test 17-Lietuva
    [Tags]    Lietuva    Europe
    [Setup]    Open my Chrome
    Make cookies dissapear cgi
    Select region
    Select Country    Lietuva
    [Teardown]    Close All Browsers

Test 18-Magyarország
    [Tags]    Magyarország    Europe
    [Setup]    Open my Chrome
    Make cookies dissapear cgi
    Select region
    Select Country    Magyarország
    [Teardown]    Close All Browsers

Test 19-Nederland
    [Tags]    Nederland    Europe
    [Setup]    Open my Chrome
    Make cookies dissapear cgi
    Select region
    Select Country    Nederland
    [Teardown]    Close All Browsers

Test 20-Norge
    [Tags]    Norge    Europe
    [Setup]    Open my Chrome
    Make cookies dissapear cgi
    Select region
    Select Country    Norge
    [Teardown]    Close All Browsers

Test 21-Northern Ireland
    [Tags]    Northern Ireland    Europe
    [Setup]    Open my Chrome
    Make cookies dissapear cgi
    Select region
    Select Country    Northern Ireland
    [Teardown]    Close All Browsers

Test 22-Polska
    [Tags]    Polska    Europe
    [Setup]    Open my Chrome
    Make cookies dissapear cgi
    Select region
    Select Country    Polska
    [Teardown]    Close All Browsers

Test 23-Portugal
    [Tags]    Portugal    Europe
    [Setup]    Open my Chrome
    Make cookies dissapear cgi
    Select region
    Select Country    Portugal
    [Teardown]    Close All Browsers

Test 24-Scotland
    [Tags]    Scotland    Europe
    [Setup]    Open my Chrome
    Make cookies dissapear cgi
    Select region
    Select Country    Scotland
    [Teardown]    Close All Browsers

Test 25-Slovensko
    [Tags]    Slovensko    Europe
    [Setup]    Open my Chrome
    Make cookies dissapear cgi
    Select region
    Select Country    Slovensko
    [Teardown]    Close All Browsers

Test 26-Suomi
    [Tags]    Suomi    Europe
    [Setup]    Open my Chrome
    Make cookies dissapear cgi
    Select region
    Select Country    Suomi
    [Teardown]    Close All Browsers

Test 27-Sverige
    [Tags]    Sverige    Europe
    [Setup]    Open my Chrome
    Make cookies dissapear cgi
    Select region
    Select Country    Sverige
    [Teardown]    Close All Browsers

Test 28-United Kingdom
    [Tags]    United Kingdom    Europe
    [Setup]    Open my Chrome
    Make cookies dissapear cgi
    Select region
    Select Country    United Kingdom
    [Teardown]    Close All Browsers

Test 29-Wales
    [Tags]    Wales    Europe
    [Setup]    Open my Chrome
    Make cookies dissapear cgi
    Select region
    Select Country    Wales
    [Teardown]    Close All Browsers

Test 30-Canada EN
    [Setup]    Open my Chrome
    Make cookies dissapear cgi
    Select region
    Select MultiLanguage Country1    canada    en    -    ca
    Verify Countries    Canada
    [Teardown]    Close All Browsers

Test 31-Canada FR
    [Setup]    Open my Chrome
    Make cookies dissapear cgi
    Select region
    Select MultiLanguage Country1    canada    fr    -    ca
    [Teardown]    Close All Browsers

Test 32-Luxembourg EN
    [Setup]    Open my Chrome
    Make cookies dissapear cgi
    Select region
    Select MultiLanguage Country1    luxembourg    en    ${EMPTY}    ${EMPTY}
    [Teardown]    Close All Browsers

Test 33-Luxembourg FR
    [Setup]    Open my Chrome
    Make cookies dissapear cgi
    Select region
    Select MultiLanguage Country1    luxembourg    fr    -    fr
    [Teardown]    Close All Browsers

Test 34-Romania EN
    [Setup]    Open my Chrome
    Make cookies dissapear cgi
    Select region
    Select MultiLanguage Country1    romania    en    ${EMPTY}    ${EMPTY}
    [Teardown]    Close All Browsers

Test 35-Romania RO
    [Setup]    Open my Chrome
    Make cookies dissapear cgi
    Select region
    Select MultiLanguage Country1    romania    ro    ${EMPTY}    ${EMPTY}
    [Teardown]    Close All Browsers

