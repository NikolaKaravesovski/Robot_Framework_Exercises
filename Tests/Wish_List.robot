*** Settings ***
Resource          ../Keywords/Common.robot
Resource          ../Keywords/Wish_List.robot
Library           SeleniumLibrary
Library           String

*** Test Cases ***
TC002.Check that Update wishlist of the wishlist is working correctly
    Add First_Prize_Pies to Wish List
    Click Element    ${LocWishList2}
    Wait Until Element Is Visible    ${RemoveBtn}
    Click Element    ${RemoveBtn}
    Validate that Wish List is empty

TC003.Check Add products to Cart from wishlist page functionality is working correctly
    Add First_Prize_Pies to Wish List
    Click Element    ${LocWishList2}
    Add to Cart from Wish List
    Validate that First Prize Pies book is add to Shopping Cart

TC009.Access the added product details from the wish list by clicking the image
    Add First_Prize_Pies to Wish List
    Click Element    ${LocWishList2}
    Wait Until Element Is Visible    ${ShoppinCartTitle}
    Validate that the product details page is open for the First Prize Pies
