*** Settings ***
Library           SeleniumLibrary
Library           String
Resource          ../PageObjects/Product_List.robot
Resource          ../Keywords/Product_List.robot
Resource          ../Keywords/Common.robot

*** Test Cases ***
TC001.Confirm that HP Notebook can be found in the computers category and notebooks sub-category.
    Navigate to Notebooks
    Click Element    ${LocatorHP_Envy}
    Wait Until Element Is Visible    ${LocatorImgHP_Envy}
    Element Text Should Be    ${LocatorNameEnvy}    HP Envy 6-1180ca 15.6-Inch Sleekbook

TC002.Verify the filter option is working
    Navigate to Notebooks
    CPU_Intel Core i5 & RAM_8 GB
    Wait Until Element Is Visible    ${LocatorSumsungI5&8GB}

TC004.Verify the sorting and displaying option on the product page is working correctly
    Navigate to Notebooks
    FilteringHighToLow3PrdViewList
    Wait Until Element Is Visible    ${3Item}    2    20
    Element Should Be Visible    ${3Item}
    Wait Until Element Is Visible    ${NextPage}
    Click Element    ${NextPage}
    Element Should Be Visible    ${3Item}

TC005.Verify Add to cart should work properly with available products
    Navigate to Camera&Photo
    Wait Until Element Is Visible    ${3Item}
    Click Element    ${LocAddToCartNikon}
    Sleep    5
    Clear Element Text    ${LocInputQuan.RedNikon}
    Input Text    ${LocInputQuan.RedNikon}    2
    Click Element    ${LocAddToCartRedNikon}
    Click Element    ${LocShoppingCart}
    Element Should Be Visible    ${ShopCartPage}

TC014.Test the highlighting on the vertical menu
    Navigate to Notebooks
    Element Should Be Visible    ${Loc.Comp.VerticalMenu}
    Wait Until Element Is Visible    ${Loc.SubCategoryCom}
    Click Element    ${LocVer.M.Jewelry}
    Element Text Should Be    ${LocJewelryTitle}    Jewelry
    Element Should Be Visible    ${LocVer.M.Jewelry}
