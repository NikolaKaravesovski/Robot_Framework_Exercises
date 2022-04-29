*** Settings ***
Library           SeleniumLibrary
Library           String
Resource          ../PageObjects/SearchPage.robot

*** Keywords ***
Search Product
    [Arguments]    ${arg1}
    Input Text    ${LocatorForSearch}    ${arg1}
    Click Element    ${SearchBtnTopMenu}

Validate the existing product
    Page Should Contain    HTC One Mini Blue

Validate the non-existing product
    Element Text Should Be    ${Loc.MessageNon-ExistingProduct}    No products were found that matched your criteria.

Validate if search work with 2 character
    Element Text Should Be    ${LocErrorMess_2_Characters}    Search term minimum length is 3 characters

Validate Asus-n551
    Wait Until Element Is Visible    ${LocatorAsus-n551}
    Element Text Should Be    ${LocatorAsus-n551}    Asus N551JK-XO076H Laptop

SearchComputer
    Clear Element Text    ${LocatorSearchComputer}
    Input Text    ${LocatorSearchComputer}    ${LaptopTEXT}
    Select Checkbox    ${SelectAdvancedCheckbox}
    Select From List By Value    ${LocatorCategory}    1

Search using the Advanced search option
    Select Checkbox    ${LocatorSubCategoriesCheckbox}
    Select From List By Value    ${LocatorManufacturer}    2
    Select Checkbox    ${ProductDescriptionsCheckbox}
    Click Button    ${SearchBtn}

Validate HP Spectre XT Pro UltraBook
    Element Should Be Enabled    ${LocatorHP_Spectre}

Search without Select Checkbox Automatically search sub categories
    Unselect Checkbox    ${LocatorSubCategoriesCheckbox}
    Select From List By Value    ${LocatorManufacturer}    2
    Select Checkbox    ${ProductDescriptionsCheckbox}
    Click Button    ${SearchBtn}

Validate that No products were found that matched your criteria.
    Element Text Should Be    ${LocatorNoProduct}    ${TextErrorNoProduct}
