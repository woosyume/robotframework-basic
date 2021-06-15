*** Settings ***
Library  SeleniumLibrary
Documentation  This file is about user defined keywords with standard style

*** Variables ***
${URL}  https://www.rakuten.co.jp/
${BROWSER}  Chrome

*** Keywords ***
# Keyword without argument
Start Browser and Maximize
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window

Start Browser and Maximize With Argument
    [Documentation]  This keyword is...
    # This timeout setting is limiting test running time for this test. e.g. 2mins 8s
    [Timeout]  10s
    [Arguments]  ${UserURL}  ${InputBrowser}
    Open Browser  ${UserURL}  ${InputBrowser}
    Maximize Browser Window

    ${title}=  Get Title
    # Put INFO log to log.html
    Log    ${title}
    [Return]  ${title}