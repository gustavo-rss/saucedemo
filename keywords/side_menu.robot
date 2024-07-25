*** Settings ***
Documentation       Keywords for Side Menu tests.

Resource            common_functions.robot
Resource            cart.robot


*** Keywords ***
Click on side menu
    Wait Until Element Is Visible    ${SIDE_MENU_BURGUER_BTN_LOCATOR}        10s    error=Side Menu Burguer button not displayed.
    Click Element    ${SIDE_MENU_BURGUER_BTN_LOCATOR}

Verify side menu elements
    Wait Until Element Is Visible    ${SIDE_MENU_BURGUER_BTN_LOCATOR}        10s    error=Side Menu Burguer button not displayed.
    Wait Until Element Is Visible    ${SIDE_MENU_ALL_ITEMS_LOCATOR}          10s    error=Side Menu All Items not displayed.
    Wait Until Element Is Visible    ${SIDE_MENU_ABOUT_LOCATOR}              10s    error=Side Menu About not displayed.
    Wait Until Element Is Visible    ${SIDE_MENU_LOGOUT_LOCATOR}             10s    error=Side Menu Logout not displayed.
    Wait Until Element Is Visible    ${SIDE_MENU_RESET_APP_STATE_LOCATOR}    10s    error=Side Menu Reset App State not displayed.
    
Click on side menu All Items
    Wait Until Element Is Visible    ${SIDE_MENU_ALL_ITEMS_LOCATOR}          10s    error=Side Menu All Items not displayed.
    Click Element    ${SIDE_MENU_ALL_ITEMS_LOCATOR}


Click on side menu About
    Wait Until Element Is Visible    ${SIDE_MENU_ABOUT_LOCATOR}          10s    error=Side Menu About not displayed.
    Click Element    ${SIDE_MENU_ABOUT_LOCATOR}

Verify About page
    Location Should Be    https://saucelabs.com/
    
Click on side menu Logout
    Wait Until Element Is Visible    ${SIDE_MENU_LOGOUT_LOCATOR}             10s    error=Side Menu Logout not displayed.
    Click Element    ${SIDE_MENU_LOGOUT_LOCATOR}

Verify Logout
    Location Should Be    https://www.saucedemo.com/

Click on side menu Reset App State
    Wait Until Element Is Visible    ${SIDE_MENU_RESET_APP_STATE_LOCATOR}    10s    error=Side Menu Reset App State not displayed.
    Click Element    ${SIDE_MENU_RESET_APP_STATE_LOCATOR}
    