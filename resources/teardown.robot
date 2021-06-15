*** Settings ***
Library  SeleniumLibrary
Documentation  This file is about user defined keywords with standard style

*** Variables ***
${URL}  https://ranking.rakuten.co.jp/
${BROWSER}  Chrome

*** Keywords ***
# Keyword without argument
Setup Start Browser and Maximize
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window

Teardown Close Browser Window
    ${title}=  Get Title
    Log    ${title}
    Close Browser

Before Each Test Suite
    Log    Before Each Test Suite

After Each Test Suite
    Log    After Each Test Suite