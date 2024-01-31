*** Settings ***
Library     RequestsLibrary
Library    JSONLibrary
Library     Collections

*** Variables ***
${endpoint}     3
${userid}       100

*** Test Cases ***
Test GET Request pass
    [Documentation]     Test case passing
    Create Session  my_session  https://jsonplaceholder.typicode.com/
    ${resp}=    Get On Session     my_session  /posts/${endpoint}
    ${status_code}=     Evaluate    str(${resp.status_code})
    Should Be Equal     ${status_code}  200
    ${resp_json}=   Call Method     ${resp}     json
    Should Contain      ${resp_json}    userId
    Should Contain      ${resp_json}    id
    Should Contain      ${resp_json}    title
    Should Contain      ${resp_json}    body
    ${userId}=  Set Variable    ${resp_json["userId"]}
    ${id}=  Set Variable    ${resp_json["id"]}
    ${title}=   Set Variable    ${resp_json["title"]}
    ${body}=    Set Variable    ${resp_json["body"]}

Test GET Request1 fail
    [Documentation]     Test case failure
    Create Session  my_session  https://jsonplaceholder.typicode.com/
    ${resp}=    Get On Session     my_session  /posts/${endpoint}
    ${status_code}=     Evaluate    str(${resp.status_code})
    Should Be Equal     ${status_code}  200
    ${resp_json}=   Call Method     ${resp}     json
    Should Contain      ${resp_json}    userId
    Should Contain      ${resp_json}    id
    Should Contain      ${resp_json}    title
    Should Contain      ${resp_json}    body
    ${userId}=  Set Variable    ${resp_json["userId"]}
    ${id}=  Set Variable    ${resp_json["id"]}
    ${title}=   Set Variable    ${resp_json["title"]}
    ${body}=    Set Variable    ${resp_json["body"]}
    Should Contain    ${title}    3sdfdsf

Test Get book
    [Documentation]
    # Create session to make a GET request to the API
    Create Session  my_session      url=https://openlibrary.org/api/books?bibkeys=ISBN:0201558025,LCCN:93005405&format=json
    # Make a GET request to the API and store the response in a variable
    ${resp}=    Get On Session     my_session   url=https://openlibrary.org/api/books?bibkeys=ISBN:0201558025,LCCN:93005405&format=json
    # Check if the status code of the response is 200
    ${status_code}=     Evaluate    str(${resp.status_code})
    Should Be Equal     ${status_code}  200
    # Convert the response to JSON format and store it in a variable
    ${resp_json}=   Call Method     ${resp}     json
    # Extract the information for ISBN:0201558025 and store in variables
    ${isbn}=     Get From Dictionary   ${resp_json}    ISBN:0201558025
    ${isbn_bib_key}=   Get From Dictionary    ${isbn}    bib_key
    ${isbn_info_url}=   Get From Dictionary    ${isbn}    info_url
    ${isbn_preview}=   Get From Dictionary    ${isbn}    preview
    ${isbn_preview_url}=   Get From Dictionary    ${isbn}    preview_url
    ${isbn_thumbnail_url}=   Get From Dictionary    ${isbn}    thumbnail_url
    # Extract the information for LCCN:93005405 and store in variables
    ${lccn}=    Get From Dictionary    ${resp_json}    LCCN:93005405
    ${lccn_bib_key}=   Get From Dictionary    ${lccn}    bib_key
    ${lccn_info_url}=   Get From Dictionary    ${lccn}    info_url
    ${lccn_preview}=   Get From Dictionary    ${lccn}    preview
    ${lccn_preview_url}=   Get From Dictionary    ${lccn}    preview_url
    ${lccn_thumbnail_url}=   Get From Dictionary    ${lccn}    thumbnail_url

Test GET Request cars
    [Documentation]     Test case passing
    Create Session  my_session      url=https://vpic.nhtsa.dot.gov/api/vehicles/getallmakes?format=json
    ${resp}=    Get On Session     my_session       url=https://vpic.nhtsa.dot.gov/api/vehicles/getallmakes?format=json
    ${status_code}=     Evaluate    str(${resp.status_code})
    Should Be Equal     ${status_code}      200
    ${resp_json}=   Call Method     ${resp}     json
    ${results}=     Get From Dictionary     ${resp_json}     Results
    FOR    ${result}    IN    @{results}
        ${make_id}=    Get From Dictionary    ${result}    Make_ID
        ${make_name}=    Get From Dictionary    ${result}    Make_Name
        Log to Console    Make_ID: ${make_id}  has the name  Make_Name: ${make_name}
    END
