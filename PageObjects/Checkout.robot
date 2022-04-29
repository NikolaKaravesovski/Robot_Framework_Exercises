*** Settings ***
Library           SeleniumLibrary
Library           String

*** Variables ***
${LocatorSoftwareVerticalMenu}    (//a[@href="/software"])[3]
${LocAddToCartWin8Pro}    (//*[@class="button-2 product-box-add-to-cart-button"])[2]
${LocCheckoutBtn}    //*[@id="checkout"]
${CheckboxIAgreeForTerm}    //*[@id="termsofservice"]
${EmptyShoppCartMessage}    //*[@class="no-data"]
${LocCheckoutAsAGuestBtn}    //*[@class="button-1 checkout-as-guest-button"]
${LocContinueBtn}    (//*[@name="save"])[1]
${LocValidationError}    (//*[@class="field-validation-error"])[1]
${NextBtnContinue}    //*[@class="button-1 shipping-method-next-step-button"]
${ByCreditCard}    //*[@id="paymentmethod_1"]
${NextBTnContinuePayment}    //*[@class="button-1 payment-method-next-step-button"]
${CardholderName}    //*[@id="CardholderName"]
${CardNumber}     //*[@id="CardNumber"]
${ExpireMonth}    //*[@id="ExpireMonth"]
${ExpireYear}     //*[@id="ExpireYear"]
${CardCode}       //*[@id="CardCode"]
