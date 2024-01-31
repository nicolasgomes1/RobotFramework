*** Settings ***
Library     RequestsLibrary
Library    JSONLibrary
Library     Collections

*** Variables ***
${endpoint}     3
${userid}       100
*** Test Cases ***
Test GET Request1
    Create Session    my_session    https://jsonplaceholder.typicode.com/
    ${resp}=    Get On Session  my_session  /posts/${endpoint}
    ${status_code}=     Evaluate     str(${resp.status_code})
    Should Be Equal     ${status_code}  200
    ${resp_json}=   Evaluate    str(${resp.json()})
    Should Contain      ${resp_json}    userId
    Should Contain      ${resp_json}    id
    Should Contain      ${resp_json}    title
    Should Contain      ${resp_json}    body

Test GET Request2
    FOR    ${i}     IN RANGE    1    100
    ${endpoint}     Set Variable    ${i}
    ${userid}       Set Variable    ${i//10 + 1}
    Create Session    my_session    https://jsonplaceholder.typicode.com/
    ${resp}=    Get On Session  my_session  /posts/${endpoint}
    ${status_code}=     Evaluate     str(${resp.status_code})
    Should Be Equal     ${status_code}  200
    ${resp_json}=   Evaluate    str(${resp.json()})
    Should Contain      ${resp_json}    userId
    Should Contain      ${resp_json}    id
    Should Contain      ${resp_json}    title
    Should Contain      ${resp_json}    body
    END


Test rest api
    Create Session    json_placeholder_api    http://jsonplaceholder.typicode.com
    ${response}=    GET On Session    json_placeholder_api    /posts
    Should Be Equal As Strings    ${response.status_code}    200
    ${response_json}=    To Json    ${response.text}
    ${first_post}=    Evaluate    ${response_json}[0]
    Should Be Equal    ${first_post}['title']    "sunt aut facere repellat provident occaecati excepturi optio reprehenderit"



Test JSON Placeholder API11
    Create Session    json_placeholder_api    http://jsonplaceholder.typicode.com
    ${response}=    GET On Session    json_placeholder_api    /posts
    Should Be Equal As Strings   ${response.status_code}    200
    ${response_json}=    To Json    ${response.text}
    FOR    ${i}    IN RANGE    0    100
        ${post}=    Set Variable    ${response_json[${i}]}
        ${keys}=    Get Dictionary Keys    ${post}
        FOR    ${key}    IN    @{keys}
            Dictionary Should Contain Key    ${post}    ${key}
            ${value}=    Get From Dictionary    ${post}    ${key}
            Log    Key: ${key}, Value: ${value}
        END
    END