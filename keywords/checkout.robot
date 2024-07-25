*** Settings ***
Documentation       Keywords for Cart tests.

Resource            common_functions.robot
Library             FakerLibrary


*** Keywords ***
Verify checkout your information elements
    Wait Until Element Is Visible    ${CHECKOUT_YOUR_INFO_HEADER_LOCATOR}        10s    error=Checkout Your Information header is not displayed.
    Wait Until Element Is Visible    ${CHECKOUT_CANCEL_BTN_LOCATOR}              10s    error=Checkout Cancel button is not displayed.
    Wait Until Element Is Visible    ${CHECKOUT_CONTINUE_BTN_LOCATOR}            10s    error=Checkout Continue button is not displayed.
    Wait Until Element Is Visible    ${CHECKOUT_FIRST_NAME_LOCATOR}              10s    error=Checkout First Name is not displayed.
    Wait Until Element Is Visible    ${CHECKOUT_LAST_NAME_LOCATOR}               10s    error=Checkout Last Name is not displayed.
    Wait Until Element Is Visible    ${CHECKOUT_POSTAL_CODE_LOCATOR}             10s    error=Checkout Postal Code is not displayed.
    Wait Until Location Contains     checkout-step-one                           10s    error=URL does not contain checkout-step-one.

Fill checkout address
    ${random_name}         Generate Random Male Name
    ${random_last_name}    Generate Random Last Name
    ${random_postal_code}  Generate Random Postal Code

    Input Text    ${CHECKOUT_FIRST_NAME_LOCATOR}    ${random_name}
    Input Text    ${CHECKOUT_LAST_NAME_LOCATOR}     ${random_last_name}
    Input Text    ${CHECKOUT_POSTAL_CODE_LOCATOR}   ${random_postal_code}

Click on cancel from checkout
    Wait Until Element Is Visible    ${CHECKOUT_CANCEL_BTN_LOCATOR}        10s    error=Checkout Cancel button is not displayed.
    Click Element    ${CHECKOUT_CANCEL_BTN_LOCATOR}

Click on continue from checkout
    Wait Until Element Is Visible    ${CHECKOUT_CONTINUE_BTN_LOCATOR}        10s    error=Checkout Continue button is not displayed.
    Click Element    ${CHECKOUT_CONTINUE_BTN_LOCATOR}

Verify checkout overview elements
    Wait Until Element Is Visible    ${CHECKOUT_OVERVIEW_HEADER_LOCATOR}         10s    error=Checkout overview header is not displayed.
    Wait Until Element Is Visible    ${CHECKOUT_PRODUCT_NAME_LOCATOR}            10s    error=Checkout Product Name is not displayed.
    Wait Until Element Is Visible    ${CHECKOUT_PRODUCT_DESCRIPTION_LOCATOR}     10s    error=Checkout Product Description is not displayed.
    Wait Until Element Is Visible    ${CHECKOUT_PRODUCT_QTY_LOCATOR}             10s    error=Checkout Product Quantity is not displayed.
    Wait Until Element Is Visible    ${CHECKOUT_PRODUCT_PRICE_LOCATOR}           10s    error=Checkout Product Price is not displayed.
    Wait Until Element Is Visible    ${CHECKOUT_PAYMENT_INFO_LOCATOR}            10s    error=Checkout Payment Info is not displayed.
    Wait Until Element Is Visible    ${CHECKOUT_PAYMENT_INFO_VALUE_LOCATOR}      10s    error=Checkout Payment Info value is not displayed.
    Wait Until Element Is Visible    ${CHECKOUT_SHIPPING_INFO_LOCATOR}           10s    error=Checkout Shipping Info is not displayed.
    Wait Until Element Is Visible    ${CHECKOUT_SHIPPING_INFO_VALUE_LOCATOR}     10s    error=Checkout Shipping Info value is not displayed.
    Wait Until Element Is Visible    ${CHECKOUT_PRICE_TOTAL_LOCATOR}             10s    error=Checkout Price Total is not displayed.
    Wait Until Element Is Visible    ${CHECKOUT_PRICE_TOTAL_VALUE_LOCATOR}       10s    error=Checkout Price Total value is not displayed.
    Wait Until Element Is Visible    ${CHECKOUT_PRICE_TOTAL_TAX_VALUE_LOCATOR}   10s    error=Checkout Price Total Tax is not displayed.
    Wait Until Element Is Visible    ${CHECKOUT_TOTAL_VALUE_LOCATOR}             10s    error=Checkout Total Value is not displayed.
    Wait Until Element Is Visible    ${CHECKOUT_FINISH_BTN_LOCATOR}              10s    error=Checkout Finish button is not displayed.

Click on finish from checkout
    Wait Until Element Is Visible    ${CHECKOUT_FINISH_BTN_LOCATOR}              10s    error=Checkout Finish button is not displayed.
    Click Element    ${CHECKOUT_FINISH_BTN_LOCATOR}

Verify checkout complete elements
    Wait Until Element Is Visible    ${CHECKOUT_COMPLETE_TITLE_LOCATOR}             10s    error=Checkout Complete Title is not displayed.
    Wait Until Element Is Visible    ${CHECKOUT_COMPLETE_HEADER_LOCATOR}            10s    error=Checkout Complete Header is not displayed.
    Wait Until Element Is Visible    ${CHECKOUT_COMPLETE_TEXT_LOCATOR}              10s    error=Checkout Complete Text is not displayed.
    Wait Until Element Is Visible    ${CHECKOUT_COMPLETE_BACK_BTN_LOCATOR}          10s    error=Checkout Complete Back Home button is not displayed.
    Element Text Should Be    ${CHECKOUT_COMPLETE_HEADER_LOCATOR}    Thank you for your order!

Click on back home button
    Click Element    ${CHECKOUT_COMPLETE_BACK_BTN_LOCATOR}

Verify checkout your information error message
    Wait Until Element Is Visible    ${CHECKOUT_POSTAL_ERROR_LOCATOR}    10s    error=Checkout Your Information error message not displayed.