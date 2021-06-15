*** Settings ***
Library  SeleniumLibrary
Resource  ../../resources/initial_practice.robot

*** Variables ***
# Already defined on resources

*** Test Cases ***
Test with User Defined Keyword
    Start Browser and Maximize

Test with User Defined Keyword with Argument and Return
    ${return}=  Start Browser and Maximize With Argument    https://ranking.rakuten.co.jp/    Chrome
    Log To Console    return value is ${return}