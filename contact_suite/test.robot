*** Settings ***
Documentation       This suite will handle invalid credential
...     test - TC_OH_3
Resource    ../Resource/CommonFunctionality.resource

Test Setup      Launch Browser
Test Teardown   Close Browser

Test Template     Invalid Credential
Library     DataDriver      file=../test_data/open_data.xlsx      sheet_name=Invalid Credential


*** Test Cases ***
TC1

*** Keywords ***
Invalid Credential
    Click Element    xpath=//a[@class='btn btn-link navbar-btn']
    [Arguments]     ${username}     ${password}     ${expected_error}
    Input Text    id=input-email   ${username}
    Input Password    id=input-password    ${password}
    Click Element    xpath=//button[text()='Login']
    Element Text Should Be    id=spanMessage    expected=${expected_error}