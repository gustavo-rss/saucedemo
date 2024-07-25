*** Settings ***
Documentation       Keywords for Product Detail page tests.

Resource            common_functions.robot


*** Keywords ***
Verify product page elements
    Wait Until Element Is Visible    ${PRODUCT_PAGE_PRODUCT_NAME_LOCATOR}           10s    error=Product page product Name not displayed.
    Wait Until Element Is Visible    ${PRODUCT_PAGE_PRODUCT_DESCRIPTION_LOCATOR}    10s    error=Product page product Description not displayed.
    Wait Until Element Is Visible    ${PRODUCT_PAGE_PRODUCT_PRICE_LOCATOR}          10s    error=Product page product Price not displayed.
    Wait Until Element Is Visible    ${PRODUCT_PAGE_PRODUCT_IMG_LOCATOR}            10s    error=Product page product Image not displayed.
    Wait Until Element Is Visible    ${PRODUCT_PAGE_PRODUCT_ADD_TO_CART_LOCATOR}    10s    error=Product page product Add to cart not displayed.
    Wait Until Element Is Visible    ${PRODUCT_PAGE_BACK_TO_PRODUCTS_LOCATOR}       10s    error=Product page product Back to products not displayed.
    Wait Until Location Contains     inventory-item                                 10s    error=URL does not contain inventory-item.

Click on Back to products from product page
    Click Element    ${PRODUCT_PAGE_BACK_TO_PRODUCTS_LOCATOR}

Click on Add to cart button in product page
    Click Element    ${PRODUCT_PAGE_PRODUCT_ADD_TO_CART_LOCATOR}
    Wait Until Element Is Visible    ${PRODUCT_PAGE_REMOVE_PRODUCT_LOCATOR}    10s    error=Product list Remove product button not displayed. 
    Wait Until Element Is Visible    ${CART_ICON_QTY_LOCATOR}                  10s    error=Product list Cart quantity not displayed.
    ${cart_qty}    Get Text    ${CART_ICON_QTY_LOCATOR}
    Should Be Equal    1    ${cart_qty}
    
Click on Remove product button in product page
    Click Element    ${PRODUCT_PAGE_REMOVE_PRODUCT_LOCATOR}
    Wait Until Element Is Not Visible    ${CART_ICON_QTY_LOCATOR}          10s    error=Product list Cart quantity is displayed.