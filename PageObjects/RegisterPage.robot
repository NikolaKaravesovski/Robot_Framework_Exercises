*** Settings ***
Library           String
Library           SeleniumLibrary

*** Variables ***
${RegisterBtnTopMenu}    //*[@href="/register?returnUrl=%2F"]
${RegisterPageUrl}    https://demo.nopcommerce.com/register?returnUrl=%2F
${RegisterTitle}    //*[@class="page-title"]
${FirstNameLoc}    //*[@id="FirstName"]    # Locator for input Frist Name
${FirstNameText}    Nikolce    # My Name
${LastNameLoc}    //*[@id="LastName"]    # Locator for input LastName
${LastNameText}    Karavesovski    # My Last Name
${EmailLocator}    //*[@id="Email"]    # Locator for input email
${ValidEmailText}    SkyBird@on.net.mk    # MyEmail
${PasswordLocator}    //*[@id="Password"]    # Locator for input password
${PasswordText}    28ZLS@zA6NT2d
${LocatorDateOfBirth}    //*[@name="DateOfBirthDay"]
${Loc_DateOfBirthMonth}    //*[@name="DateOfBirthMonth"]    # Locator for select Month of Birth.
${LocatorYearOfBirth}    //*[@name="DateOfBirthYear"]
${RegisterBtn}    //*[@name="register-button"]
${ConfirmPasswordLocator}    //*[@name="ConfirmPassword"]
${LocatorForVerifyThatUserRegistred}    //*[@class="result"]
${TextForVerifyThatUserRegistred}    Your registration completed
${LocatorForVerifyThatNotRegistred}    //*[@class="message-error validation-summary-errors"]
${InvalidEmailText}    SkyBird&on.net.mk
${LocatorWrongEmail}    //*[@id="Email-error"]
${ConfirmPasswordDiffrent}    38ZLS@zA6NT2d7U12334880393
${LocatorForConfirmPasswordError}    //*[@id="ConfirmPassword-error"]
${LocatorForPasswordError}    //*[@id="Password-error"]
${ConfirmPasswordText}    28ZLS@zA6NT2d
${InvalidPasswordText}    12345
${LocatorFirstNameEmptyError}    //*[@class="field-validation-error"]
${LocatorLastNameIsEmptyError}    //*[@id="LastName-error"]
${DateMyBird}     5
${MonthMyBird}    10
${YearMyBird}     1982
