*** Settings ***
Library  SeleniumLibrary
Library    Screenshot

*** Variables ***
${BROWSER}  Chrome
${URL}  https://ranking.rakuten.co.jp

*** Test Cases ***
Read Fetch Data
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    ${PageTitle} =  Get Title
    Log To Console    ${PageTitle}

    ${Speed} =  Get Selenium Speed
    Log To Console    ${Speed}

    ${Value} =  Get Text    class:ri-cmn-hdr-unique-ttl # ランキング

    Log To Console    ${Value}

Read Fetch Data 2
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window

    Select From List By Index    id:ri-cmn-hdr-genre-select  0
    ${Val} =  Get Selected List Value    id:ri-cmn-hdr-genre-select

    ${Text} =  Get Selected List Label    id:ri-cmn-hdr-genre-select
    Log To Console    ${Val}
    Log To Console    ${Text} # ランキングで

    ${AllLables} =  Get List Items    id:ri-cmn-hdr-genre-select # ['ランキングで', '楽天市場の全商品で'] 전체 확인 가능
    Log To Console    ${AllLables}

Read Fetch Data 3
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    ${ACTUALURL} =  Get Location
    Log To Console  ${ACTUALURL}

    # ${PageHTML} =  Get Source
    # Log To Console  ${PageHTML}

    ${ATTR} =  Get Element Attribute    id:ri-cmn-hdr-genre-select    name # smd
    Log To Console    ${ATTR}

    ${ELE_COUNT} =  Get Element Count    class:rnkRanking_upperbox
    Log To Console    ${ELE_COUNT}