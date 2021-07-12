*** Settings ***
Library  ../ExternalKeywords/Locators.py
Library    SeleniumLibrary

*** Variables ***
${Browser}  Chrome
${Url}  https://ranking.rakuten.co.jp

*** Test Cases ***
Run Test With Json
    # Open Browser  ${URL}  ${BROWSER}
    ${test} =  Read Element Locator    Search.keyword_textbox_name
    Log To Console    ${test} # stx

*** Keywords ***
Read Element Locator
    [Arguments]  ${JsonPath}
    ${result} =  Read Locator Value From Json    ${JsonPath}
    [Return]  ${result}
