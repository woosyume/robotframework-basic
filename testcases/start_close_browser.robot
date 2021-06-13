*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${BROWSER}  Chrome
${URL}  https://ranking.rakuten.co.jp

*** Test Cases ***
Browser Start and Close
    Open Browser  ${URL}  ${BROWSER}
    Close Browser

Input Search Keyword
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Enter Search Keyword  本
    # This kind of keyword is basically calling API connected with Selenium

*** Keywords ***
Enter Search Keyword
    [Arguments]  ${searchkeyword}
    Input Text  name: stx  ${searchkeyword}
