*** Settings ***
Library  SeleniumLibrary
Library  Collections

*** Variables ***

*** Test Cases ***
Robot File Practice
    # Setting variables
    ${VAR1} =  set variable  Hello
    log to console  ${VAR1}

    # Setting list
    @{LIST1}  create list  Hello  22  23.23  World  Abcd1234
    ${LENGTH}  get length  ${LIST1}
    log to console  length=${LENGTH}
    ${LIST1_DATA} =  get from list  ${LIST1}  4
    log to console  data=${LIST1_DATA}

    # Loop
    FOR  ${i}  IN RANGE  1  10
      log to console  ${i}
    END

    FOR  ${i}  IN  @{LIST1}
      log to console  ${i}
    END

    # Conditional keyword
    ${KEY_VAR} =  set variable  log to console
    run keyword  ${KEY_VAR}  woosyume's testing

    ${VAR} =  set variable  YES
    run keyword if  '${VAR}'=='YES'  log to console  Value Found
    run keyword if  '${VAR}'=='No'  log to console  Value Not Found
    
*** Keywords ***