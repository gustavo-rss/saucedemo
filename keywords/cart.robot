*** Settings ***
Documentation       Keywords for Cart tests.

Resource            common_functions.robot


*** Keywords ***
Verify empty mini cart 
    Wait Until Element Is Not Visible    ${CART_ICON_QTY_LOCATOR}          10s    error=Product list Cart quantity is displayed.

Verify cart elements
    Wait Until Element Is Visible    ${CART_ICON_LOCATOR}                        10s    error=Cart icon is not displayed.
    Wait Until Element Is Visible    ${CART_HEADER_LOCATOR}                      10s    error=Cart header is not displayed.
    Wait Until Element Is Visible    ${CART_QTY_LOCATOR}                         10s    error=Cart quantity is not displayed.
    Wait Until Element Is Visible    ${CART_DESCRIPTION_LOCATOR}                 10s    error=Cart description is not displayed.
    Wait Until Element Is Visible    ${CART_PRODUCT_NAME_LOCATOR}                10s    error=Cart product name is not displayed.
    Wait Until Element Is Visible    ${CART_PRODUCT_DESCRIPTION_LOCATOR}         10s    error=Cart product description is not displayed.
    Wait Until Element Is Visible    ${CART_PRODUCT_QTY_LOCATOR}                 10s    error=Cart product quantity is not displayed.
    Wait Until Element Is Visible    ${CART_PRODUCT_PRICE_LOCATOR}               10s    error=Cart product price is not displayed.
    Wait Until Element Is Visible    ${CART_REMOVE_BTN_LOCATOR}                      10s    error=Cart remove button is not displayed.
    Wait Until Element Is Visible    ${CART_CONTINUE_SHOPPING_BTN_LOCATOR}           10s    error=Cart continue shopping button is not displayed.
    Wait Until Element Is Visible    ${CART_CHECKOUT_LOCATOR}                    10s    error=Cart checkout button is not displayed.
    Wait Until Location Contains     cart                                        10s    error=URL does not contain cart.

Verify empty cart
    Wait Until Element Is Not Visible    ${CART_PRODUCT_NAME_LOCATOR}                10s    error=Cart product name is displayed.
    Wait Until Element Is Not Visible    ${CART_PRODUCT_DESCRIPTION_LOCATOR}         10s    error=Cart product description is displayed.
    Wait Until Element Is Not Visible    ${CART_PRODUCT_QTY_LOCATOR}                 10s    error=Cart product quantity is displayed.
    Wait Until Element Is Not Visible    ${CART_PRODUCT_PRICE_LOCATOR}               10s    error=Cart product price is displayed.
    Wait Until Element Is Not Visible    ${CART_REMOVE_BTN_LOCATOR}                      10s    error=Cart remove button is displayed.

Click on mini cart
    Wait Until Element Is Visible    ${CART_ICON_LOCATOR}                        10s    error=Cart icon is not displayed.
    Click Element    ${CART_ICON_LOCATOR}

Click on continue shopping
    Wait Until Element Is Visible    ${CART_CONTINUE_SHOPPING_BTN_LOCATOR}           10s    error=Cart continue shopping button is not displayed.
    Click Element    ${CART_CONTINUE_SHOPPING__BTN_LOCATOR}

Click on remove cart product
    Wait Until Element Is Visible    ${CART_REMOVE_BTN_LOCATOR}                      10s    error=Cart remove button is not displayed.
    Click Element    ${CART_REMOVE_BTN_LOCATOR}
    
Click on checkout from cart
    Wait Until Element Is Visible    ${CART_CHECKOUT_LOCATOR}                    10s    error=Cart checkout button is not displayed.
    Click Element    ${CART_CHECKOUT_LOCATOR}