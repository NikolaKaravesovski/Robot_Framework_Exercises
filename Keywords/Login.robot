*** Settings ***
Library           SeleniumLibrary
Library           String
Resource          ../PageObjects/LoginPage.robot
Resource          ../Resources/TestData.robot

*** Keywords ***
Navigate to Login page
    Click Element    ${LoginBtn_TopMenu}

Login User
    [Arguments]    ${arg1}    ${arg2}
    Input Text    ${LocatorEmail_input}    ${arg1}
    Input Password    ${LocatorPassword_input}    ${arg2}
    Select Checkbox    ${CheckboxLocator}
    Click Button    ${LoginBtn}

Verify that user is logged in Succesfuly
    Wait Until Element Is Visible    ${LocatorMyAccountTopMenu}

Verify That User is not Logged with invalid Password
    Element Should Contain    ${ErrorInvalidPassword}    Login was unsuccessful. Please correct the errors and try again.

Verify That User is not Logged with InvalidEmail
    Element Text Should Be    ${LocatorErrorEmail}    Wrong email

Verify That User is not Logged with ValidEmail and emptyPassword
    Page Should Contain    ${ErrorMessageValidationText}

Verify That User is not Logged
    Element Text Should Be    ${LocatorErrorEmail}    Please enter your email
