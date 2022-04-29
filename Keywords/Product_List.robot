*** Settings ***
Resource          ../PageObjects/Product_List.robot
Library           SeleniumLibrary
Library           String

*** Keywords ***
Navigate to Notebooks
    Click Element    ${LocatorComputers}
    Click Element    ${LocatorNotebooks }

CPU_Intel Core i5 & RAM_8 GB
    Select Checkbox    ${LocatorChekbox_i5}
    Select Checkbox    ${LocatorCheckbox_8GB}

FilteringHighToLow3PrdViewList
    Select From List By Value    ${LocatorOrderBy}    11
    Select From List By Value    ${LocatorPageSize}    3
    Click Element    ${Loc.ListView}

Navigate to Camera&Photo
    Mouse Over    ${Elect.Locator}
    Click Element    ${Cam.&Photo}
