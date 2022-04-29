*** Settings ***
Test Setup        Open app
Library           SeleniumLibrary
Library           String
Resource          ../Keywords/Common.robot
Resource          ../PageObjects/RegisterPage.robot
Resource          ../Keywords/Register.robot

*** Test Cases ***
TC001.Register_Check_If_RegisterPage_is_accesible
    NavigateToRegisterPage
    Wait Until Element Is Visible    ${RegisterTitle}
    Location Should Be    ${RegisterPageUrl}

TC002.RegisterNewUserWithValidEmail
    NavigateToRegisterPage
    Generate Random Email
    DateOfMyBird    ${DateMyBird}    ${MonthMyBird}    ${YearMyBird}
    Register User    ${FirstNameText}    ${LastNameText}    ${randomEmail}    ${PasswordText}    ${ConfirmPasswordText}
    Verify that User is registred

TC003.RegisterNewUserWith_InvalidEmail
    NavigateToRegisterPage
    DateOfMyBird    ${DateMyBird}    ${MonthMyBird}    ${YearMyBird}
    Register User    ${FirstNameText}    ${LastNameText}    ${InvalidEmailText}    ${PasswordText}    ${ConfirmPasswordText}
    Verify That User is not Registred with wrong email

TC004.RegisterNewUserWithExistingEmail
    NavigateToRegisterPage
    DateOfMyBird    ${DateMyBird}    ${MonthMyBird}    ${YearMyBird}
    Register User    ${FirstNameText}    ${LastNameText}    ${ValidEmailText}    ${PasswordText}    ${ConfirmPasswordText}
    Verify That User is not Registred with Existing Email

TC005.RegisterNewUserWithDifferentPasswordAndConfirmPassworkField
    NavigateToRegisterPage
    DateOfMyBird    ${DateMyBird}    ${MonthMyBird}    ${YearMyBird}
    Generate Random Email
    Register User    ${FirstNameText}    ${LastNameText}    ${randomEmail}    ${PasswordText}    ${ConfirmPasswordDiffrent}
    Verify That Password and Confirm password are Different

TC006.RegisterNewUserWithPasswordAndEmptyConfirmPasswordField
    NavigateToRegisterPage
    DateOfMyBird    ${DateMyBird}    ${MonthMyBird}    ${YearMyBird}
    Generate Random Email
    Register User    ${FirstNameText}    ${LastNameText}    ${randomEmail}    ${PasswordText}    ${EMPTY}
    Verify That Confirm Password field is empty

TC007.RegisterNewUserWithEmptyPasswordAndConfirmPasswordField
    NavigateToRegisterPage
    DateOfMyBird    ${DateMyBird}    ${MonthMyBird}    ${YearMyBird}
    Generate Random Email
    Register User    ${FirstNameText}    ${LastNameText}    ${randomEmail}    ${EMPTY}    ${ConfirmPasswordText}
    Verify That Password and Confirm password are Different

TC008.RegisterNewUserWithEmptyPasswordAndEmptyConfirmPasswordField
    NavigateToRegisterPage
    DateOfMyBird    ${DateMyBird}    ${MonthMyBird}    ${YearMyBird}
    Generate Random Email
    Register User    ${FirstNameText}    ${LastNameText}    ${randomEmail}    ${EMPTY}    ${EMPTY}
    Verify That Password and Confirm password fields are Empty

TC009.RegisterNewUserWithInvalidPassword
    NavigateToRegisterPage
    DateOfMyBird    ${DateMyBird}    ${MonthMyBird}    ${YearMyBird}
    Generate Random Email
    Register User    ${FirstNameText}    ${LastNameText}    ${randomEmail}    ${InvalidPasswordText}    ${InvalidPasswordText}
    Verify That Password must have at least 6 characters

TC010.RegisterNewUserWithEmptyFirstNameField
    NavigateToRegisterPage
    DateOfMyBird    ${DateMyBird}    ${MonthMyBird}    ${YearMyBird}
    Generate Random Email
    Register User    ${EMPTY}    ${LastNameText}    ${randomEmail}    ${PasswordText}    ${ConfirmPasswordText}
    VerifyThatFirstNameIsEmpty

TC011.RegisterNewUserWithEmptyLastNameField
    NavigateToRegisterPage
    DateOfMyBird    ${DateMyBird}    ${MonthMyBird}    ${YearMyBird}
    Generate Random Email
    Register User    ${FirstNameText}    ${EMPTY}    ${randomEmail}    ${PasswordText}    ${ConfirmPasswordText}
    Verify That LastName field is empty
