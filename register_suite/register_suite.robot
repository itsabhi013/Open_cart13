*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem


*** Test Cases ***
TC1
#    Append To Environment Variable    Path      E:\\Robot_Driver
#    Open Browser    url=https://www.opencart.com/     browser=chrome
#    Maximize Browser Window
#    Set Selenium Implicit Wait    30s
    Click Element    xpath=//a[@class='btn btn-black navbar-btn']
    Input Text    id=input-username    abhi2613
    Input Text    id=input-firstname    Abhishek
    Input Text    id=input-lastname    Kashyap
    Input Text    id=input-email    abhi7161073@gmail.com
    Select From List By Label    id=input-country   India
    Input Text    id=input-password    abhi1816516
    Sleep    30s
#    Click Element    xpath=//button[@class='btn btn-primary btn-lg btn-block visible-xs-block']
    Click Element    xpath=//button[text()='Register']