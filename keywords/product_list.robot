*** Settings ***
Documentation       Keywords for Product List page tests.

Resource            common_functions.robot


*** Keywords ***
Verify product list elements
    Wait Until Element Is Visible    ${CART_ICON_LOCATOR}               10s    error=Shopping Cart not displayed.
    Wait Until Element Is Visible    ${PRODUCTS_HEADER_LOCATOR}         10s    error=Product list Header not displayed.
    Wait Until Element Is Visible    ${PRODUCTS_FILTER_LOCATOR}         10s    error=Product list Filter not displayed.
    Wait Until Element Is Visible    ${PRODUCTS_IMAGE_LOCATOR}          10s    error=Product list product Image not displayed.
    Wait Until Element Is Visible    ${PRODUCTS_NAME_LOCATOR}           10s    error=Product list product Name not displayed.
    Wait Until Element Is Visible    ${PRODUCTS_DESCRIPTION_LOCATOR}    10s    error=Product list product Description not displayed.
    Wait Until Element Is Visible    ${PRODUCTS_PRICE_LOCATOR}          10s    error=Product list product Price not displayed.
    Wait Until Element Is Visible    ${PRODUCTS_ADD_TO_CART_LOCATOR}    10s    error=Product list product Add to Cart button not displayed.
    Wait Until Location Contains     inventory                          10s    error=URL does not contain inventory.

Interact with product list filters
    Click Element    ${PRODUCTS_FILTER_LOCATOR}
    Wait Until Element Is Visible    ${PRODUCTS_FILTER_AZ_LOCATOR}           10s    error=Product list Filter A to Z not displayed.
    Wait Until Element Is Visible    ${PRODUCTS_FILTER_ZA_LOCATOR}           10s    error=Product list Filter Z to A not displayed.
    Wait Until Element Is Visible    ${PRODUCTS_FILTER_PRICE_LOW_LOCATOR}    10s    error=Product list Filter Low to High not displayed.
    Wait Until Element Is Visible    ${PRODUCTS_FILTER_PRICE_HIGH_LOCATOR}   10s    error=Product list Filter High to Low not displayed.
    Click on Name (A to Z) product list filter
    Click on Name (Z to A) product list filter
    Click on Price (low to high) product list filter
    Click on Price (high to low) product list filter

Click on Name (A to Z) product list filter
    Click Element    ${PRODUCTS_FILTER_AZ_LOCATOR}
    Verify Product Order A to Z

Click on Name (Z to A) product list filter
    Click Element    ${PRODUCTS_FILTER_ZA_LOCATOR}
    Verify Product Order Z to A

Click on Price (low to high) product list filter
    Click Element    ${PRODUCTS_FILTER_PRICE_LOW_LOCATOR}
    Verify Product Order Price Low to High
    
Click on Price (high to low) product list filter
    Click Element    ${PRODUCTS_FILTER_PRICE_HIGH_LOCATOR}
    Verify Product Order Price High to Low

Verify Product Order A to Z
    ${product_names}  Get WebElements  ${PRODUCTS_NAME_ALL_LOCATOR}
    ${product_count}  Get Length  ${product_names}
    @{product_name_list}  Create List
    FOR  ${index}  IN RANGE  0  ${product_count}
        ${product_text}  Get Text  ${product_names[${index}]}
        Append To List  ${product_name_list}  ${product_text}
    END
    
    @{main_list}    Copy List    ${product_name_list}
    Log List    ${main_list}

    Sort List  ${product_name_list}
    Log List    ${product_name_list}

    Should Be Equal  ${main_list}  ${product_name_list}
    
Verify Product Order Z to A
    ${product_names}  Get WebElements  ${PRODUCTS_NAME_ALL_LOCATOR}
    ${product_count}  Get Length  ${product_names}
    @{product_name_list}  Create List
    FOR  ${index}  IN RANGE  0  ${product_count}
        ${product_text}  Get Text  ${product_names[${index}]}
        Append To List  ${product_name_list}  ${product_text}
    END
    
    @{main_list}    Copy List    ${product_name_list}

    Log List    ${main_list}

    Sort List  ${product_name_list}
    Log List    ${product_name_list}

    Reverse List    ${product_name_list}
    Log List    ${product_name_list}

    Should Be Equal  ${main_list}  ${product_name_list}

Verify Product Order Price Low to High
    ${product_prices}  Get WebElements  ${PRODUCTS_PRICE_ALL_LOCATOR}
    ${product_count}  Get Length  ${product_prices}
    @{product_price_list}  Create List

    FOR  ${index}  IN RANGE  0  ${product_count}
        ${product_price}  Get Text  ${product_prices[${index}]}
        ${cleaned_price}  Evaluate  float(${product_price.strip('$')})
        Append To List  ${product_price_list}  ${cleaned_price}
    END
    
    @{main_list}    Copy List    ${product_price_list}
    Log List    ${main_list}

    Sort List  ${product_price_list}
    Log List    ${product_price_list}

    Should Be Equal  ${main_list}  ${product_price_list}

Verify Product Order Price High to Low
    ${product_prices}  Get WebElements  ${PRODUCTS_PRICE_ALL_LOCATOR}
    ${product_count}  Get Length  ${product_prices}
    @{product_price_list}  Create List

    FOR  ${index}  IN RANGE  0  ${product_count}
        ${product_price}  Get Text  ${product_prices[${index}]}
        ${cleaned_price}  Evaluate  float(${product_price.strip('$')})
        Append To List  ${product_price_list}  ${cleaned_price}
    END
    
    @{main_list}    Copy List    ${product_price_list}
    Log List    ${main_list}

    Sort List  ${product_price_list}
    Log List    ${product_price_list}

    Reverse List  ${product_price_list}
    Log List    ${product_price_list}

    Should Be Equal  ${main_list}  ${product_price_list}

Click on Add to cart button in product list
    Wait Until Element Is Visible    ${PRODUCTS_ADD_TO_CART_LOCATOR}       10s    error=Product list product Add to Cart button not displayed.
    Click Element    ${PRODUCTS_ADD_TO_CART_LOCATOR}
    Wait Until Element Is Visible    ${PRODUCTS_REMOVE_PRODUCT_LOCATOR}    10s    error=Product list Remove product button not displayed. 
    Wait Until Element Is Visible    ${CART_ICON_QTY_LOCATOR}              10s    error=Product list Cart quantity not displayed.
    ${cart_qty}    Get Text    ${CART_ICON_QTY_LOCATOR}
    Should Be Equal    1    ${cart_qty}
    
Click on Remove product button in product list
    Wait Until Element Is Visible    ${PRODUCTS_REMOVE_PRODUCT_LOCATOR}    10s    error=Product list Remove product button not displayed. 
    Click Element    ${PRODUCTS_REMOVE_PRODUCT_LOCATOR}
    Wait Until Element Is Not Visible    ${CART_ICON_QTY_LOCATOR}          10s    error=Product list Cart quantity is displayed.

Click on product name from product list page
    Wait Until Element Is Visible    ${PRODUCTS_NAME_LOCATOR}           10s    error=Product list product Name not displayed.
    Click Element    ${PRODUCTS_NAME_LOCATOR}

Click on product image from product list page
    Wait Until Element Is Visible    ${PRODUCTS_IMAGE_LOCATOR}          10s    error=Product list product Image not displayed.
    Click Element    ${PRODUCTS_IMAGE_LOCATOR}