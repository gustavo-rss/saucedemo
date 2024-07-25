*** Settings ***
Documentation       Test Scenarios for Product List page.

Resource          ../../keywords/common_functions.robot
Resource          ../../keywords/product_list.robot

Test Setup       Initiate browser and login   
Test Teardown    Shutdown browser


*** Test Cases ***
TC07 - Interacting with product list filters
    [Documentation]    This test verifies product list page elements and the interaction with all of the product filters.
    [Tags]  smoke    regression    product_list
    
    Verify product list elements
    Interact with product list filters

TC08 - Interacting with product list add to cart and remove button
    [Documentation]    This test verifies product list page interaction with Add to cart and Remove button.
    [Tags]  smoke    regression    product_list
    
    Verify product list elements
    Click on Add to cart button in product list
    Click on Remove product button in product list