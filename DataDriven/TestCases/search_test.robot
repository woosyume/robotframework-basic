*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/UserKeywords.robot

*** Variables ***
${URL}  https://ranking.rakuten.co.jp

*** Test Cases ***
Searchbar Functionality Check
    Open Browser  ${URL}  Chrome
    ${row} =  Read Number of Rows    Sheet1
    ${cell} =  Read Excel Data of Cell    Sheet1    1    1
    Log To Console    ${row}  
    Log to Console  ${cell}
    Maximize Browser Window
    Input Text    name:stx    hogehoge
    Click Button    ri-cmn-hdr-button
    Sleep    5  seconds