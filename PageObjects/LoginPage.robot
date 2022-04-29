*** Settings ***
Library           String
Library           SeleniumLibrary

*** Variables ***
${Login_link}     //a[@href="/login?returnUrl=%2F"]
${URL_LoginLink}    https://demo.nopcommerce.com/login?returnUrl=%2F
${LocatorEmail_input}    id:Email
${LocatorPassword_input}    id=Password
${ValidEmail}     Alek@mail.com
${ValidPassword}    Nikola12345
${InvalidPassword}    Nik12345678
${LoginBtn}       //*[@class="button-1 login-button"]
${MyAccountText}    My account
${InvalidEmail}    SkyBoo&on.net.mk
${ErrorMessageValidationText}    Login was unsuccessful. Please correct the errors and try again.
${LocatorErrorEmail}    //*[@id="Email-error"]
${CheckboxLocator}    //*[@id="RememberMe"]
${LoginBtn_TopMenu}    //*[@href="/login?returnUrl=%2F"]
${LoginTitleMessages}    //*[@class="page-title"]
${ErrorInvalidPassword}    //*[@class="message-error validation-summary-errors"]
${LocatorMyAccountTopMenu}    (//a[@href="/customer/info"])[1]
