*** Variables ***
# Login Locators
${LOGIN_USERNAME_LOCATOR}             id=user-name
${LOGIN_PASSWORD_LOCATOR}             id=password
${LOGIN_BTN_LOCATOR}                  id=login-button
${LOGIN_HEADER_LOCATOR}               css=.login_logo
${LOGIN_ERROR_MESSAGE_LOCATOR}        css=.login-box .error-message-container


# Cart Locators
${CART_ICON_LOCATOR}                       id=shopping_cart_container
${CART_ICON_QTY_LOCATOR}                   css=[data-test="shopping-cart-badge"]
${CART_QTY_LOCATOR}                        css=[data-test="cart-quantity-label"]
${CART_DESCRIPTION_LOCATOR}                css=[data-test="cart-desc-label"]
${CART_PRODUCT_NAME_LOCATOR}               css=[data-test="inventory-item-name"]
${CART_PRODUCT_DESCRIPTION_LOCATOR}        css=[data-test="inventory-item-desc"]
${CART_PRODUCT_QTY_LOCATOR}                css=[data-test="item-quantity"]
${CART_PRODUCT_PRICE_LOCATOR}              css=[data-test="inventory-item-price"]
${CART_CONTINUE_SHOPPING_BTN_LOCATOR}      css=[data-test="continue-shopping"]
${CART_CHECKOUT_LOCATOR}                   css=[data-test="checkout"]
${CART_REMOVE_BTN_LOCATOR}                 xpath=(//button[@id[contains(., 'remove-sauce')]])[1]
${CART_HEADER_LOCATOR}                     xpath=//span[contains(., 'Your Cart')]


# Checkout Your Info Locators
${CHECKOUT_YOUR_INFO_HEADER_LOCATOR}        xpath=//span[contains(., 'Checkout: Your Information')]
${CHECKOUT_CANCEL_BTN_LOCATOR}              css=[data-test="cancel"]
${CHECKOUT_CONTINUE_BTN_LOCATOR}            id=continue
${CHECKOUT_FIRST_NAME_LOCATOR}              id=first-name
${CHECKOUT_LAST_NAME_LOCATOR}               id=last-name
${CHECKOUT_POSTAL_CODE_LOCATOR}             id=postal-code
${CHECKOUT_POSTAL_ERROR_LOCATOR}            css=[data-test="error"]

# Checkout Overview Locators
${CHECKOUT_OVERVIEW_HEADER_LOCATOR}         xpath=//span[contains(., 'Checkout: Overview')]
${CHECKOUT_PRODUCT_NAME_LOCATOR}            css=[data-test="inventory-item-name"]
${CHECKOUT_PRODUCT_DESCRIPTION_LOCATOR}     css=[data-test="inventory-item-desc"]
${CHECKOUT_PRODUCT_QTY_LOCATOR}             css=[data-test="item-quantity"]
${CHECKOUT_PRODUCT_PRICE_LOCATOR}           css=[data-test="inventory-item-price"]
${CHECKOUT_PAYMENT_INFO_LOCATOR}            css=[data-test="payment-info-label"]
${CHECKOUT_PAYMENT_INFO_VALUE_LOCATOR}      css=[data-test="payment-info-value"]    
${CHECKOUT_SHIPPING_INFO_LOCATOR}           css=[data-test="shipping-info-label"]    
${CHECKOUT_SHIPPING_INFO_VALUE_LOCATOR}     css=[data-test="shipping-info-value"]    
${CHECKOUT_PRICE_TOTAL_LOCATOR}             css=[data-test="total-info-label"]    
${CHECKOUT_PRICE_TOTAL_VALUE_LOCATOR}       css=[data-test="subtotal-label"]    
${CHECKOUT_PRICE_TOTAL_TAX_VALUE_LOCATOR}   css=[data-test="tax-label"]    
${CHECKOUT_TOTAL_VALUE_LOCATOR}             css=[data-test="total-label"]    
${CHECKOUT_FINISH_BTN_LOCATOR}              id=finish

# Checkout Complete Locators
${CHECKOUT_COMPLETE_TITLE_LOCATOR}          xpath=//span[contains(., 'Checkout: Complete!')]
${CHECKOUT_COMPLETE_HEADER_LOCATOR}         css=[data-test="complete-header"]
${CHECKOUT_COMPLETE_TEXT_LOCATOR}           css=[data-test="complete-text"]
${CHECKOUT_COMPLETE_BACK_BTN_LOCATOR}       id=back-to-products



#Product List Locators
${PRODUCTS_HEADER_LOCATOR}             xpath=//span[contains(., 'Products')]
${PRODUCTS_IMAGE_LOCATOR}              xpath=(//*[@*='inventory_item_img']//img)[1]
${PRODUCTS_NAME_LOCATOR}               xpath=(//*[@data-test="inventory-item-name"])[1]
${PRODUCTS_NAME_ALL_LOCATOR}           xpath=//*[@data-test="inventory-item-name"]
${PRODUCTS_DESCRIPTION_LOCATOR}        xpath=(//*[@data-test="inventory-item-desc"])[1]
${PRODUCTS_PRICE_LOCATOR}              xpath=(//*[@data-test="inventory-item-price"])[1]
${PRODUCTS_PRICE_ALL_LOCATOR}          xpath=//*[@data-test="inventory-item-price"]
${PRODUCTS_ADD_TO_CART_LOCATOR}        xpath=(//button[@id[contains(., 'add-to-cart')]])[1]
${PRODUCTS_REMOVE_PRODUCT_LOCATOR}     xpath=(//button[@id[contains(., 'remove-sauce')]])[1]
${PRODUCTS_FILTER_LOCATOR}             css=[data-test="product-sort-container"]
${PRODUCTS_FILTER_AZ_LOCATOR}          css=[data-test="product-sort-container"] [value="az"]
${PRODUCTS_FILTER_ZA_LOCATOR}          css=[data-test="product-sort-container"] [value="za"]
${PRODUCTS_FILTER_PRICE_LOW_LOCATOR}   css=[data-test="product-sort-container"] [value="lohi"]
${PRODUCTS_FILTER_PRICE_HIGH_LOCATOR}  css=[data-test="product-sort-container"] [value="hilo"]


# Product Page Locators
${PRODUCT_PAGE_PRODUCT_NAME_LOCATOR}           css=.inventory_details_name
${PRODUCT_PAGE_PRODUCT_DESCRIPTION_LOCATOR}    css=.inventory_details_desc
${PRODUCT_PAGE_PRODUCT_PRICE_LOCATOR}          css=.inventory_details_price
${PRODUCT_PAGE_PRODUCT_IMG_LOCATOR}            css=.inventory_details_img
${PRODUCT_PAGE_PRODUCT_ADD_TO_CART_LOCATOR}    id=add-to-cart
${PRODUCT_PAGE_BACK_TO_PRODUCTS_LOCATOR}       id=back-to-products
${PRODUCT_PAGE_REMOVE_PRODUCT_LOCATOR}         id=remove


# Footer Locators
${FOOTER_X_LOCATOR}          css=[data-test="social-twitter"] 
${FOOTER_FACEBOOK_LOCATOR}   css=[data-test="social-facebook"]
${FOOTER_LINKEDIN_LOCATOR}   css=[data-test="social-linkedin"] 


# Side Menu Locators
${SIDE_MENU_BURGUER_BTN_LOCATOR}        id=react-burger-menu-btn
${SIDE_MENU_ALL_ITEMS_LOCATOR}          id=inventory_sidebar_link
${SIDE_MENU_ABOUT_LOCATOR}              id=about_sidebar_link
${SIDE_MENU_LOGOUT_LOCATOR}             id=logout_sidebar_link
${SIDE_MENU_RESET_APP_STATE_LOCATOR}    id=reset_sidebar_link