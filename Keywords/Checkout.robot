*** Settings ***
Library           SeleniumLibrary
Library           String
Resource          ../PageObjects/Checkout.robot
Resource          ../Resources/TestData.robot

*** Keywords ***
Navigate to Software
    Click Element    ${LocatorComuterTopMenu}
    Click Element    ${LocatorSoftwareVerticalMenu}

Validate that no logged any user
    Element Text Should Be    ${LocatorLogInTopM}    ${TextLogIn}

Validate Checkout Btn is Visible,I agree terms & Click btn
    Wait Until Element Is Visible    ${LocCheckoutBtn}
    Select Checkbox    ${CheckboxIAgreeForTerm}
    Click Element    ${LocCheckoutBtn}

Validate that user must log in frist
    Wait Until Element Is Visible    ${MessageWellcomeHeader}
    Element Text Should Be    ${MessageWellcomeHeader}    Welcome, Please Sign In!

Validate that Shopping Cart Is Empty&CheckoutBtn isn't visible
    Element Text Should Be    ${EmptyShoppCartMessage}    Your Shopping Cart is empty!
    Element Should Not Be Visible    ${LocCheckoutBtn}

Validate that Field are empty
    Element Text Should Be    (//*[@class="field-validation-error"])[1]    First name is required.
    Element Text Should Be    (//*[@class="field-validation-error"])[2]    Last name is required.
    Element Text Should Be    (//*[@class="field-validation-error"])[3]    Email is required.
    Element Text Should Be    (//*[@class="field-validation-error"])[4]    Country is required.
    Element Text Should Be    (//*[@class="field-validation-error"])[5]    City is required
    Element Text Should Be    (//*[@class="field-validation-error"])[6]    Street address is required    Street address is required
    Element Text Should Be    (//*[@class="field-validation-error"])[7]    Zip / postal code is required

Add to Cart Windows 8 Pro
    Click Element    ${LocAddToCartWin8Pro}
    Click Element    ${LocatorShopinngCartTopMenu}
    Wait Until Element Is Visible    ${ShoppingCartProductName}
    Element Text Should Be    ${ShoppingCartProductName}    Windows 8 Pro

Checkout - Billing address-Shipping-Payment
    Input Text    ${FirstName}    Ivan
    Input Text    ${LastName}    Ivanov
    Input Text    ${EmailCheckout}    Ivanovivan@email.com
    Select From List By Value    ${Country}    219
    Input Text    ${City}    Moscow
    Input Text    ${Address1}    Leninsky Ave 20
    Input Text    ${ZipPostalCode}    101000
    Input Text    ${PhoneNumber}    787-0000
    Click Button    ${LocContinueBtn}
    Wait Until Element Is Visible    ${NextBtnContinue}
    Click Element    ${NextBtnContinue}
    Wait Until Element Is Visible    ${ByCreditCard}
    Click Element    ${ByCreditCard}
    Wait Until Element Is Visible    ${NextBTnContinuePayment}
    Click Element    ${NextBTnContinuePayment}
    Wait Until Element Is Visible    ${CardType}
    Select From List By Value    ${CardType}    MasterCard
    Input Text    ${CardholderName}    Ivan Ivanov
    Input Text    ${CardNumber}    5159661410754896
    Select From List By Value    ${ExpireMonth}    1
    Select From List By Value    ${ExpireYear}    2024
    Input Text    ${CardCode}    164
    Click Element    //*[@class="button-1 payment-info-next-step-button"]
    Wait Until Element Is Visible    //*[@class="button-1 confirm-order-next-step-button"]
    Click Element    //*[@class="button-1 confirm-order-next-step-button"]
    Sleep    6

Validate that Your order has been successfully processed!
    Element Text Should Be    //*[@class="page-title"]/h1    Thank you
    Click Element    //*[@class="button-1 order-completed-continue-button"]
