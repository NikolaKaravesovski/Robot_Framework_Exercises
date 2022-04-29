*** Settings ***
Library           SeleniumLibrary
Library           String

*** Variables ***
${BooksTopMenu}    (//*[@href="/books"])[1]
${AddToWishListFirst_Prize_Pies}    (//*[@class="button-2 add-to-wishlist-button"])[2]
${LocWishList2}    (//*[@href="/wishlist"])[2]
${RemoveBtn}      (//*[@name="updatecart"])[1]
${EmptyWishList}    //*[@class="no-data"]
${AddToCartBtnFromWhishList}    //*[@name="addtocartbutton"]
${ChackBoxAddToCart}    //*[@name="addtocart"]
${ShoppinCartTitle}    //*[@class="page-title"]/h1
${ProductNameWishList}    //*[@class="product-name"]
${ImgForFirstPrizePies}    //*[@alt="Picture of First Prize Pies"]
${ProductNamePDP}    //*[@class="product-name"]/h1
