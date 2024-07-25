*** Settings ***
Documentation       Test Scenarios for Cart.

Resource          ../../keywords/common_functions.robot
Resource          ../../keywords/side_menu.robot

Test Setup       Initiate browser and login   
Test Teardown    Shutdown browser


*** Test Cases ***
TC16 - Interacting with cart elements 
    [Documentation]    This test verifies interaction with cart elements.
    [Tags]  smoke    cart 
    
    Click on Add to cart button in product list
    Click on mini cart
    Verify cart elements
    Click on checkout from cart
    Click on cancel from checkout

    Click on remove cart product
    Verify empty cart
    Verify empty mini cart
    Click on continue shopping
    Verify product list elements
