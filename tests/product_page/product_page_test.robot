*** Settings ***
Documentation       Test Scenarios for Product Detail page.

Resource          ../../keywords/common_functions.robot
Resource          ../../keywords/product_page.robot

Test Setup       Initiate browser and login   
Test Teardown    Shutdown browser


*** Test Cases ***
TC09 - Navigating to a product detail page from product list
    [Documentation]    This test verifies the navigation to a product page detail page from product list.
    [Tags]  smoke    product_page
    
    Click on product name from product list page
    Verify product page elements
    Click on Back to products from product page
    Click on product image from product list page
    Verify product page elements

TC10 - Interacting with product page add to cart and remove button
    [Documentation]    This test verifies product page interaction with Add to cart and Remove button.
    [Tags]  smoke    product_page
    
    Click on product name from product list page
    Verify product page elements
    Click on Add to cart button in product page
    Click on Remove product button in product page