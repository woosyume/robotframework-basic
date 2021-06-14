*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}  Chrome
${URL}  https://ranking.rakuten.co.jp

*** Test Cases ***
Validate Input Search Keyword
  ${speed} =  Get Selenium Speed
  Log To Console    ${speed}

  Open Browser  ${URL}  ${BROWSER}
  Set Selenium Speed    1 seconds
  Input Text    name:stx    本

  ${speed} =  Get Selenium Speed
  Log To Console    ${speed}  

Test Timeout
  Open Browser  ${URL}  ${BROWSER}
  Maximize Browser Window
  Set Selenium Timeout    3 seconds

  ${timeout} =  Get Selenium Timeout
  Log To Console    ${timeout}

  Wait Until Page Contains    ランキング
  Close Browser