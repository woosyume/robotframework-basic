*** Settings ***
Library  SeleniumLibrary
Library  ../ExternalKeywords/UserKeywords.py
Resource  ../../resources/initial_practice.robot
Resource  ../../resources/teardown.robot
Test Timeout  30s
Test Setup  Setup Start Browser and Maximize
Test Teardown  Teardown Close Browser Window
Suite Setup  Before Each Test Suite
Suite Teardown  After Each Test Suite

*** Variables ***
# Already defined on resources

*** Test Cases ***
Test with User Defined Keyword
    [Documentation]  This test is about ...
    Start Browser and Maximize

Test with User Defined Keyword with Argument and Return
    ${return}=  Start Browser and Maximize With Argument    https://ranking.rakuten.co.jp/    Chrome
    Log To Console    return value is ${return}

Teardown Behavior Check
    # [Setup]  Setup Start Browser and Maximize
    # [Teardown]  Teardown Close Browser Window
    Input Text    name:stx    test

Runtime Test
    Create Directory at Runtime  hohoho