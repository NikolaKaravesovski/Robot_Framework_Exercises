*** Settings ***
Test Setup        Open app
Test Teardown     Close Browser
Library           SeleniumLibrary
Library           String
Resource          ../Keywords/Common.robot
Resource          ../Keywords/Register.robot
Resource          ../PageObjects/LoginPage.robot
Resource          ../Keywords/Login.robot
Resource          ../PageObjects/Product_List.robot
Resource          ../Keywords/Product_List.robot
