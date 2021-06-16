*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}  Chrome
${URL}  https://ranking.rakuten.co.jp/

*** Test Cases ***
First Tag Test
    [Tags]  Smoke
    Setup Tests
    Teardown Tests

Second Tag Test
    [Tags]  Smoke  Sanity
    Setup Tests
    Teardown Tests


*** Keywords ***
Setup Tests
    Open Browser  ${URL}  ${BROWSER}

Teardown Tests
    Close Browser
