*** Settings ***
Library  SeleniumLibrary
Library  ../ExternalKeywords/UserKeywords.py
Documentation  This file is about user defined keywords with standard style

*** Variables ***
${URL}  https://ranking.rakuten.co.jp/
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

Create Directory at Runtime
    [Arguments]  ${subfoldername}
    create_folder
    create_sub_folder  ${subfoldername}
    Log To Console    "Successful!!"

Concat is available for User Name
    [Arguments]  ${firstname}  ${lastname} 
    ${result} =  concat_two_values  ${firstname}  ${lastname}
    Log To Console    ${result}