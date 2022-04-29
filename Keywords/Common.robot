*** Settings ***
Library           SeleniumLibrary
Library           SeleniumLibrary
Library           String
Resource          ../Resources/TestData.robot
Resource          ../PageObjects/RegisterPage.robot

*** Keywords ***
Open app
    Open Browser    ${HomepageURL}    ${Browser}
    Maximize Browser Window

NavigateToRegisterPage
    Click Element    ${RegisterBtnTopMenu}
