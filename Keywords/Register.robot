*** Settings ***
Library           SeleniumLibrary
Library           String
Resource          ../PageObjects/RegisterPage.robot

*** Keywords ***
Generate Random Email
    ${random2}    String.Generate Random String    5    [LOWER]
    ${randomEmail}    Catenate    ${random2}@on.net.mk
    Set Global Variable    ${randomEmail}
    [Return]    ${randomEmail}

Verify that User is registred
    Element Text Should Be    ${LocatorForVerifyThatUserRegistred}    ${TextForVerifyThatUserRegistred}

Register User
    [Arguments]    ${arg1}    ${arg2}    ${arg3}    ${arg4}    ${arg5}
    Input Text    ${FirstNameLoc}    ${arg1}
    Input Text    ${LastNameLoc}    ${arg2}
    Input Text    ${EmailLocator}    ${arg3}
    Input Password    ${PasswordLocator}    ${arg4}
    Input Password    ${ConfirmPasswordLocator}    ${arg5}
    Wait Until Keyword Succeeds    20    2    Click Button    ${RegisterBtn}

Verify That User is not Registred with wrong email
    Element Text Should Be    ${LocatorWrongEmail}    Wrong email

Verify That User is not Registred with Existing Email
    Element Text Should Be    ${LocatorForVerifyThatNotRegistred}    The specified email already exists

Verify That Password and Confirm password are Different
    Element Text Should Be    ${LocatorForConfirmPasswordError}    The password and confirmation password do not match.

Verify That Password and Confirm password fields are Empty
    Element Text Should Be    ${LocatorForPasswordError}    Password is required.
    Element Text Should Be    ${LocatorForConfirmPasswordError}    Password is required.

Verify That Password is Empty
    Wait Until Element Is Visible    ${LocatorForPasswordError}    Password is required.

Verify That Password must have at least 6 characters
    Page Should Contain    Password must meet the following rules: must have at least 6 characters

VerifyThatFirstNameIsEmpty
    Element Text Should Be    ${LocatorFirstNameEmptyError}    First name is required.

Verify That LastName field is empty
    Element Text Should Be    ${LocatorLastNameIsEmptyError}    Last name is required.

Verify That Confirm Password field is empty
    Element Text Should Be    ${LocatorForConfirmPasswordError}    Password is required.

DateOfMyBird
    [Arguments]    ${arg1}    ${arg2}    ${arg3}
    Select From List By Value    ${LocatorDateOfBirth}    ${arg1}
    Select From List By Value    ${Loc_DateOfBirthMonth}    ${arg2}
    Select From List By Value    ${LocatorYearOfBirth}    ${arg3}
