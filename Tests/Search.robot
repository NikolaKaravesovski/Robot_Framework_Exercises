*** Settings ***
Resource          ../Keywords/Search.robot
Resource          ../Keywords/Common.robot
Resource          ../PageObjects/SearchPage.robot

*** Test Cases ***
TC001.Search for existing product
    Search Product    ${ProductHTC}
    Validate the existing product

TC002.Search for non-existing product
    Search Product    ${Non_ExistingProduct}
    Validate the non-existing product

TC003.Test seach engine if search field is empty
    Search Product    ${EMPTY}
    Handle Alert    action=ACCEPT
    Alert Should Not Be Present

TC004.Test if search works for a less then 3 character keyword
    Search Product    ${SearchProductWith2_Characters}
    Validate if search work with 2 character

TC005.Check if auto-suggestion displays suggestions in the search field
    Input Text    ${LocatorForSearch}    ${SearchAPP}
    Wait Until Element is Visible    ${SearchDropdownMenu}
    Page Should Contain    ${SearchResultApple}

TC006.Test auto-suggestions displayed in the search field
    Input Text    ${LocatorForSearch}    ${SearchAPP}
    Wait Until Element is Visible    ${SearchDropdownMenu}
    Mouse Down    ${SearchSubMenu}
    Click Element    ${SearchSubMenu}
    Location Should Be    ${URL_AppleIcam}
    Element Text Should Be    ${CurrentItemLlocator}    ${SearchResultAppCam}

TC007.Test if auto-suggestions displayed in the search field are accesible with keyboard arrow key
    Input Text    ${LocatorForSearch}    ${SearchProd.Asus}
    Wait Until Element is Visible    ${SearchDropdownMenu}
    Press Keys    ${SearchSubMenu}    ARROW_DOWN
    Location Should Be    https://demo.nopcommerce.com/${SearchProd.Asus}-n551jk-xo076h-laptop
    Page Should Contain    ${SearchProductAsusN551}

TC008.Test if the search is case insensitive
    Search Product    ${SearchItemWithAllCAPS_Letter}
    Validate Asus-n551
    Search Product    ${SearchItemWithAll_lower-case}
    Validate Asus-n551

TC009.Run successful search using the Advanced search option
    Search Product    ${SearchPhone}
    SearchComputer
    Search using the Advanced search option
    Validate HP Spectre XT Pro UltraBook

TC010.Run unsuccesful search using the Advanced searh option
    Search Product    ${SearchPhone}
    SearchComputer
    Validate that No products were found that matched your criteria.
