*** Settings ***
Library           SeleniumLibrary
Library           String
Resource          ../Keywords/Common.robot
Resource          ../Keywords/Checkout.robot
Resource          ../PageObjects/Checkout.robot

*** Test Cases ***
TC001.Access the checkout page with the condition: add the product to the shopping cart
    Validate that no logged any user
    Navigate to Software
    Click Element    ${LocAddToCartWin8Pro}
    Click Element    ${LocatorShopinngCartTopMenu}
    Wait Until Element Is Visible    ${ShoppingCartProductName}
    Element Text Should Be    ${ShoppingCartProductName}    Windows 8 Pro
    Validate Checkout Btn is Visible,I agree terms & Click btn
    Validate that user must log in frist

TC002.Access the checkout page without adding product to shopping cart
    Click Element    ${LocatorShopinngCartTopMenu}
    Validate that Shopping Cart Is Empty&CheckoutBtn isn't visible

TC005.Check if error message is displayed when user doesn't enter data in all of the required filed in billing address while checking out as guest
    Validate that no logged any user
    Navigate to Software
    Add to Cart Windows 8 Pro
    Validate Checkout Btn is Visible,I agree terms & Click btn
    Wait Until Element Is Visible    ${LocCheckoutAsAGuestBtn}
    Click Button    ${LocCheckoutAsAGuestBtn}
    Wait Until Element Is Visible    ${LocContinueBtn}
    Click Button    ${LocContinueBtn}
    Wait Until Element Is Visible    ${LocValidationError}
    Validate that Field are empty

TC006.Checkout as guest and pay with: Credit Card
    Validate that no logged any user
    Navigate to Software
    Add to Cart Windows 8 Pro
    Validate Checkout Btn is Visible,I agree terms & Click btn
    Wait Until Element Is Visible    ${LocCheckoutAsAGuestBtn}
    Click Button    ${LocCheckoutAsAGuestBtn}
    Checkout - Billing address-Shipping-Payment
    Validate that Your order has been successfully processed!
