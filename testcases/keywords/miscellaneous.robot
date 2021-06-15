*** Settings ***
Library  SeleniumLibrary
Library    Screenshot

*** Variables ***
${BROWSER}  Chrome
${URL}  https://ranking.rakuten.co.jp
${TO}=  https://www.rakuten.co.jp

*** Test Cases ***
Test Screeshot
    Open Browser  ${URL}  ${BROWSER}
    ${dir}=  Set Screenshot Directory    ./evidences

    Capture Page Screenshot  test.png
    Close Browser

Close All Browsers
    Open Browser  ${URL}  ${BROWSER}
    Open Browser  ${URL}  ${BROWSER}
    # Close all opened browsers from this script
    Close All Browsers

GoTo, GoBack, Get Location
    Open Browser  ${URL}  ${BROWSER}
    Go To  ${TO}
    Go Back
    ${location}=  Get Location
    Log To Console    Current is on ${location}

Execute Javascript
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Execute Javascript  window.scrollTo(0,1000)
    Sleep    10 seconds

Perform Mouse Operations
    Open Browser  ${URL}  ${BROWSER}
    # Open Context Menu    xpath://*[@id="rankingGenreBox1"]/span/a
    # Sleep    5 seconds

    # Double Click Element    locator
    Mouse Over    xpath://*[@id="rankingGenreBox1"]/span/a
    Sleep    5 seconds

Perform Keyboard Operations
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Press Keys    name:stx    woosyume
    Sleep    5 seconds

Check Tab Behavior
    # Tab switch is not working
    Open Browser  ${URL}  ${BROWSER}
    Switch Window  【楽天市場】売れ筋人気ランキング - 通販で話題の最新トレンドをリアルタイムにチェック!
    
    Click Element    xpath://*[@id="rankingGenreBox1"]/span/a
    ${handle}=  Switch Window  new

    Switch Window  ${handle}
    Sleep    3 seconds