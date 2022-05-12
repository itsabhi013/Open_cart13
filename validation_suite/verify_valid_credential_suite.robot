* Settings *
Documentation       This suite will handle invalid credential
...     test - TC_OH_3
Resource     ../Resource/CommonFunctionality.resource


Test Setup      Launch Browser
Test Teardown   Close Browser

Test Template     Invalid Credential Template
Library     DataDriver      file=../test_data/open_data.xlsx    sheet_name=Valid Credential

* Test Cases *
Tc1
* Keywords *
Invalid Credential Template
    Click Element    xpath=//a[@class='btn btn-link navbar-btn']
    [Arguments]     ${username}     ${password}     ${expected_value}
    Input Text    id=input-email   ${username}
    Input Password    id=input-password    ${password}
    Click Element    xpath=//button[text()='Login']
    #Element Text Should Be    xpath=//div[@class='alert alert-danger']    expected=${expected_error}
    Input Text    id=input-pin    9190
    Click Element    xpath=//button[text()='Continue']
    Page Should Contain    ${expected_value}