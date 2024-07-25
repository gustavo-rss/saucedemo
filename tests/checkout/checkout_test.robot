*** Settings ***
Documentation       Test Scenarios for Side Menu.

Resource          ../../keywords/common_functions.robot
Resource          ../../keywords/checkout.robot

Test Setup       Initiate browser and login   
Test Teardown    Shutdown browser


*** Test Cases ***
TC17 - Completing a single product order 
    [Documentation]    This test verifies completing a single product order.
    [Tags]  smoke    checkout 

    Click on Add to cart button in product list
    Click on mini cart
    Click on checkout from cart
    Verify checkout your information elements
    Fill checkout address
    Click on continue from checkout
    Verify checkout overview elements
    Click on finish from checkout
    Verify checkout complete elements
    Click on back home button
    Verify product list elements

TC18 - Inputting empty address on checkout
    [Documentation]    This test verifies completing a single product order.
    [Tags]  smoke    checkout 

    Click on Add to cart button in product list
    Click on mini cart
    Click on checkout from cart
    Verify checkout your information elements
    Click on continue from checkout
    Verify checkout your information error message
