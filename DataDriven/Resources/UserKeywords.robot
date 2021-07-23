*** Settings ***
Library  ../TestData/ReadData.py

*** Keywords ***
Read Number of Rows
    [Arguments]  ${sheetname}
    ${maxrow} =  Fetch Number Of Rows  ${sheetname}
    [Return]  ${maxrow}

Read Excel Data of Cell
    [Arguments]  ${sheetname}  ${row}  ${cell}
    ${value} =  Fetch Cell Data  ${sheetname}  ${row}  ${cell}
    [Return]  ${value}