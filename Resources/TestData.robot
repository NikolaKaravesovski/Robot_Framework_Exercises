*** Settings ***
Library           String
Library           SeleniumLibrary

*** Variables ***
${HomepageURL}    https://demo.nopcommerce.com/
${Browser}        chrome
${LocatorComuterTopMenu}    (//a[@href="/computers"])[1]
${LocatorLogInTopM}    //a[@class="ico-login"]
${TextLogIn}      Log in
${LocatorShopinngCartTopMenu}    //*[@class="cart-label"]
${ShoppingCartProductName}    //*[@class="product-name"]
${MessageWellcomeHeader}    //*[@class="page-title"]/h1
${FirstName}      //*[@id="BillingNewAddress_FirstName"]
${LastName}       //*[@id="BillingNewAddress_LastName"]
${EmailCheckout}    //*[@id="BillingNewAddress_Email"]
${Country}        //*[@id="BillingNewAddress_CountryId"]
${City}           //*[@id="BillingNewAddress_City"]
${Address1}       //*[@id="BillingNewAddress_Address1"]
${ZipPostalCode}    //*[@id="BillingNewAddress_ZipPostalCode"]
${PhoneNumber}    //*[@id="BillingNewAddress_PhoneNumber"]
${CardType}       //*[@name="CreditCardType"]
