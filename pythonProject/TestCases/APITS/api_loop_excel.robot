*** Settings ***
Library     RequestsLibrary
Library    JSONLibrary
Library     Collections
Library     BuiltIn
Library     ExcelLibrary
Library    Selenium2Library
Library     openpyxl
Library     RPA.Excel.Files


*** Variables ***
${API_URL}   https://pokeapi.co/api/v2/pokemon/
${id}   1
${EXCEL_FILE}   C:/Users/nicolas.gomes/pokemon_data.xlsx
${id111}
*** Keywords ***
Get Pokemon Data name based on id1
    [Tags]      ${pokemon_exp}
    [Documentation]     ${id}   -   The id of the pokemon.
    ...                 ${exp}  -   The base experience of the pokemon.
    [Arguments]     ${id}

    Create Session    my_session    ${API_URL}
    ${id}=  Convert To String    ${id}
    ${response}=    Get On Session  my_session   ${id}
    ${status_code}=     Evaluate    str(${response.status_code})
    Should Be Equal     ${status_code}  200
    ${resp_json}=   Call Method     ${response}     json

    ${pokemon_exp}=     Set Variable    ${resp_json["base_experience"]}
    ${pokemon_name}=    Set Variable    ${resp_json["name"]}
    RETURN  ${pokemon_exp}  ${pokemon_name}


*** Test Cases ***
Get pokemon data from id with loop
    FOR    ${id}    IN RANGE    1    1279
        ${pokemon_exp}    ${pokemon_name}=   Get Pokemon Data name based on id1    ${id}
        Log    Pokemon id: ${id}, name: ${pokemon_name}, exp: ${pokemon_exp}
    END



######################################################
######################################################
############Export to excel###########################
Get pokemon data from id with loop111
   [Documentation]     1 to 1279
    Create Workbook  ${EXCEL_FILE}
    Create Worksheet    pokemon_data
    FOR    ${id11}    IN RANGE    1    10
        ${pokemon_exp}    ${pokemon_name}=   Get Pokemon Data name based on id1    ${id11}
        Log    Pokemon id: ${id11}, name: ${pokemon_name}, exp: ${pokemon_exp}
        # Write the results to an Excel sheet
        Set Cell Value  ${id11}    A${id111}    ${id11}
        Set Cell Value  ${id11}    B${id111}    ${pokemon_name}
        Set Cell Value  ${id11}    C${id111}    ${pokemon_exp}
        Save Workbook
    END
    Save Workbook

