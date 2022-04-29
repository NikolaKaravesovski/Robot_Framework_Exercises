*** Settings ***
Resource          ../PageObjects/Wish_List.robot
Resource          ../Resources/TestData.robot
Library           SeleniumLibrary
Library           String

*** Keywords ***
Add First_Prize_Pies to Wish List
    Click Element    ${BooksTopMenu}
    Wait Until Element Is Visible    ${AddToWishListFirst_Prize_Pies}
    Click Element    ${AddToWishListFirst_Prize_Pies}

Validate that Wish List is empty
    Element Text Should Be    ${EmptyWishList}    The wishlist is empty!

Add to Cart from Wish List
    Wait Until Element Is Visible    ${ChackBoxAddToCart}
    Select Checkbox    ${ChackBoxAddToCart}
    Click Element    ${AddToCartBtnFromWhishList}

Validate that First Prize Pies book is add to Shopping Cart
    Wait Until Element Is Visible    ${ShoppinCartTitle}
    Element Text Should Be    ${ShoppinCartTitle}    Shopping cart
    Element Text Should Be    ${ProductNameWishList}    First Prize Pies

Validate that the product details page is open for the First Prize Pies
    Click Element    ${ImgForFirstPrizePies}
    Wait Until Element Is Visible    ${ProductNamePDP}
    Element Text Should Be    ${ProductNamePDP}    First Prize Pies
