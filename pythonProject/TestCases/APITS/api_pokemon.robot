*** Settings ***
Library     RequestsLibrary
Library    JSONLibrary
Library     Collections


*** Variables ***
${API_URL}   https://pokeapi.co/api/v2/pokemon/
${id}   1
*** Keywords ***
#
#Arguments:
#   ${id}   -   The id og the pokemon
#   ${exp}  -   The base experience of the pokemon
#
Get Pokemon Data
    [Documentation]     ${id}   -   The id of the pokemon.
    ...                 ${exp}  -   The base experience of the pokemon.
    [Arguments]     ${id}   ${name}     ${exp}
    Create Session    my_session    ${API_URL}
    ${response}=    Get On Session  my_session   ${id}
    ${status_code}=     Evaluate    str(${response.status_code})
    Should Be Equal     ${status_code}  200
    ${resp_json}=   Call Method     ${response}     json

    ${pokemon_exp}=     Set Variable    ${resp_json["base_experience"]}
    ${pokemon_name}=    Set Variable    ${resp_json["name"]}
    Should Be Equal     ${pokemon_name}     ${name}
    Should Be Equal    str(${pokemon_exp})    str(${exp})

Get Pokemon Data name based on id
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
Get all pokemons
    Get Pokemon Data    4    charmander      62


Get pokemon data from id
    ${pokemon_exp}  ${pokemon_name}=     Get Pokemon Data name based on id    1
    ${pokemon_exp}  ${pokemon_name}=     Get Pokemon Data name based on id    2
    ${pokemon_exp}  ${pokemon_name}=     Get Pokemon Data name based on id    3
    ${pokemon_exp}  ${pokemon_name}=     Get Pokemon Data name based on id    4
    ${pokemon_exp}  ${pokemon_name}=     Get Pokemon Data name based on id    5
    ${pokemon_exp}  ${pokemon_name}=     Get Pokemon Data name based on id    6
    ${pokemon_exp}  ${pokemon_name}=     Get Pokemon Data name based on id    7
    ${pokemon_exp}  ${pokemon_name}=     Get Pokemon Data name based on id    8
    ${pokemon_exp}  ${pokemon_name}=     Get Pokemon Data name based on id    9
    ${pokemon_exp}  ${pokemon_name}=     Get Pokemon Data name based on id    10
    ${pokemon_exp}  ${pokemon_name}=     Get Pokemon Data name based on id    11
    ${pokemon_exp}  ${pokemon_name}=     Get Pokemon Data name based on id    12
    ${pokemon_exp}  ${pokemon_name}=     Get Pokemon Data name based on id    13
    ${pokemon_exp}  ${pokemon_name}=     Get Pokemon Data name based on id    14
    ${pokemon_exp}  ${pokemon_name}=     Get Pokemon Data name based on id    15
    ${pokemon_exp}  ${pokemon_name}=     Get Pokemon Data name based on id    16
    ${pokemon_exp}  ${pokemon_name}=     Get Pokemon Data name based on id    17
    ${pokemon_exp}  ${pokemon_name}=     Get Pokemon Data name based on id    18
    ${pokemon_exp}  ${pokemon_name}=     Get Pokemon Data name based on id    19
    ${pokemon_exp}  ${pokemon_name}=     Get Pokemon Data name based on id    20


Get pokemon data from id with loop
    FOR    ${id}    IN RANGE    1    1279
        ${pokemon_exp}    ${pokemon_name}=    Get Pokemon Data name based on id    ${id}
        Log    Pokemon id: ${id}, name: ${pokemon_name}, exp: ${pokemon_exp}
    END







