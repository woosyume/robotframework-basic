*** Settings ***
Documentation     A test suite with a single test for 【楽天市場】hogehogeの通販 - デイリーランキング入賞商品一覧
...               Created by hats' Robotcorder
Library           SeleniumLibrary    timeout=10

*** Variables ***
${BROWSER}    chrome
${SLEEP}    3

*** Test Cases ***
【楽天市場】hogehogeの通販 - デイリーランキング入賞商品一覧 test
    Open Browser    https://ranking.rakuten.co.jp/search?smd=0&stx=hogehoge&prl=&pru=&rvf=&arf=&vmd=0&ptn=1&srt=1&sgid=    ${BROWSER}
    Select From List By Value    //select[@name="smd"]    1
    Select From List By Value    //select[@name="smd"]    0
    Input Text    //input[@name="stx"]    test

    Close Browser