*** Settings ***
Resource    ../resources/initial_practice.robot

*** Variables ***

*** Test Cases ***
Test Case in BDD Format
    Given Start Browser and Maximize
    When Create Directory at Runtime    bdd_test1
    Then Concat is available for User Name    Kim    Woohyeok