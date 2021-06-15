*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}  https://www.rakuten.co.jp/
${BROWSER}  Chrome

*** Keywords ***
# Keyword without argument
Start Browser and Maximize
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window

Start Browser and Maximize With Argument
    [Arguments]  ${UserURL}  ${InputBrowser}
    Open Browser  ${UserURL}  ${InputBrowser}
    Maximize Browser Window

    ${title}=  Get Title
    # Put INFO log to log.html
    Log    ${title}
    [Return]  ${title}