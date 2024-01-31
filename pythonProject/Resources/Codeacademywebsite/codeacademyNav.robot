*** Settings ***
Library    Selenium2Library
Variables   ../../PageObjects/Codeacademywebsite/codeacademynav.py
Library    ../../PageObjects/Codeacademywebsite/codeacademynav.py



*** Variables ***
${verificationstage}
${present}

*** Keywords ***
Click Catalog
    Click Element    ${catalog_select}
    Capture Element Screenshot    ${catalog_select}


#For the moment dont know how to generalize this step
##############################################################################################
accept cookies1
    Sleep    2
    Element Should Contain    ${accept}    Accept
    Capture Element Screenshot    ${accept}
    Sleep    2
    Click Element    ${accept}
    Element Should Contain    ${accept}    Accept


MyCase2
    ${c}=    Get Element Count    ${accept}
    Run Keyword If    ${c}>0    accept cookies1
##############################################################################################


Click Resources
    Click Element    ${resources_select}
    Capture Element Screenshot    ${resources_select}
    Sleep    1

Select XXX
   [Arguments]    ${resources}    ${verificationstage}
    ${value1}    select wording    ${resources}
    Capture Element Screenshot    ${value1}
    Click Element    ${value1}
    Element Should Be Visible    ${verify_page}
    Capture Element Screenshot    ${verify_page}
    Element Should Contain    ${verify_page}    ${verificationstage}

Select other l
    [Arguments]    ${code}    ${verificationstage1}
    ${value2}    Change programming    ${code}
    Scroll Element Into View     ${value2}
    Capture Page Screenshot
    Capture Element Screenshot    ${value2}
    Capture Page Screenshot
    Click Element    ${value2}
    Element Should Contain    ${value2}    ${verificationstage1}
    Capture Page Screenshot


 Select other L1
    [Arguments]   ${code}    ${verificationstage1}    ${verificationstage2}
    ${value2}    Change programming    ${code}
    Scroll Element Into View     ${value2}
    Capture Element Screenshot    ${value2}
    Element Should Contain    ${value2}    ${verificationstage1}
    Click Element    ${value2}
    Capture Element Screenshot    ${value2}
    Sleep    1
    Set Variable    ${verificationstage2}
    Element Should Contain    ${verify_page}    ${verificationstage2}
    Capture Page Screenshot