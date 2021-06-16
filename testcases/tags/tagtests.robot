*** Settings ***
Library  SeleniumLibrary
Default Tags  DEFAULT
Force Tags  FORCED_TESTS

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

Default Tag Test
    Setup Tests
    Teardown Tests


*** Keywords ***
Setup Tests
    Open Browser  ${URL}  ${BROWSER}

Teardown Tests
    Close Browser
