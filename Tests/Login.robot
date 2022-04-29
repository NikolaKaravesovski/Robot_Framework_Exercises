*** Settings ***
Library           SeleniumLibrary
Library           String
Resource          ../Keywords/Login.robot
Resource          ../PageObjects/LoginPage.robot
Resource          ../Resources/TestData.robot
Resource          ../Keywords/Common.robot
Library           ExselRobot

*** Test Cases ***
TC001.Check if login page is accesible
    Navigate to Login Page
    Wait Until Element Is Visible    ${LoginTitleMessages}
    Location Should Be    ${URL_LoginLink}

TC002.Enter Valid Email and Valid Password
    Navigate to Login Page
    Login User    ${ValidEmail}    ${ValidPassword}
    Verify that user is logged in Succesfuly

TC003.Enter Valid Email and invalid Password
    Navigate to Login Page
    Login User    ${ValidEmail}    ${InvalidPassword}
    Verify That User is not Logged with invalid Password

TC004.Enter Invalid Email and Valid Password
    Navigate to Login Page
    Login User    ${InvalidEmail}    ${ValidPassword}
    Verify That User is not Logged with InvalidEmail

TC005.Enter Invalid Email and Invalid Password
    Navigate to Login Page
    Login User    ${InvalidEmail}    ${InvalidPassword}
    Verify That User is not Logged with InvalidEmail

TC006.Enter Empty Email and Empty Password
    Navigate to Login Page
    Login User    ${EMPTY}    ${EMPTY}
    Verify That User is not Logged

TC007.Enter Valid Email and Empty Password
    Navigate to Login Page
    Login User    ${ValidEmail}    ${EMPTY}
    Verify That User is not Logged with ValidEmail and emptyPassword

TC008.Enter Empty Email and Valid Password
    Navigate to Login Page
    Login User    ${EMPTY}    ${ValidPassword}
    Verify That User is not Logged
