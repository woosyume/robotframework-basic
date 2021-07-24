*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/UserKeywords.robot

*** Variables ***
${URL}  https://ranking.rakuten.co.jp

*** Test Cases ***
Searchbar Functionality Check
    Open Browser  ${URL}  Chrome
    ${row} =  Read Number of Rows    Sheet1
    
    FOR    ${i}    IN RANGE    1    ${row}+1
        Log    ${i}
        ${searchkeyword}=  Read Excel Data of Cell  Sheet1  ${i}  1
        Log To Console    ${searchkeyword}
    END

    # ${cell} =  Read Excel Data of Cell    Sheet1    1    1
    # Log To Console    ${row}  
    # Log to Console  ${cell}
    # Maximize Browser Window
    # Input Text    name:stx    hogehoge
    # Click Button    ri-cmn-hdr-button
    # Sleep    5  seconds