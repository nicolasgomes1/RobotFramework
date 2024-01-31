*** Settings ***
Library     Selenium2Library    timeout=5    implicit_wait=5
Resource    ../../Resources/Generic/browser.robot
Resource    ../../Resources/Codeacademywebsite/codeacademyNav.robot

*** Variables ***
${url}      https://codeacademy.com/

*** Comments ***
This are tests for Codeacademy which are build in react



*** Test Cases ***
My Firsttest with react
    [Setup]    Open my Chrome
    Click Resources
    Select XXX    C    C
    [Teardown]    Close All Browsers

My Secondtest with react
    [Setup]    Open my Chrome
    Click Catalog
    Click Resources
    Select XXX    CSS    CSS
    [Teardown]    Close All Browsers

My Thirdtest with react
    [Setup]    Open my Chrome
    Click Catalog
    Click Resources
    Select XXX    Git    Git
    [Teardown]    Close All Browsers

My Fourthtest with react
    [Setup]    Open my Chrome
    Click Catalog
    Click Resources
    Select XXX    Java    Java
    [Teardown]    Close All Browsers

My Fifthtest with react
    [Setup]    Open my Chrome
    Click Catalog
    Click Resources
    Select XXX    Cpp    C++
    [Teardown]    Close All Browsers


My Specialtest with react
    [Tags]  move1
    [Setup]    Open my Chrome
    Click Catalog
    Click Resources
    Select XXX    Cpp    C++
    Select other L1    Swift    Swift    Swift
    [Teardown]    Close All Browsers

My Specialtest with react1
    [Tags]  move
    [Setup]    Open my Chrome
    Click Catalog
    Click Resources
    Select XXX    Cpp    C++
    MyCase2
    Select other L1    uiux    UI and UX Design    UI and UX Design
    [Teardown]    Close All Browsers