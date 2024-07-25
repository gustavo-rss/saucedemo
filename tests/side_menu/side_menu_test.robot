*** Settings ***
Documentation       Test Scenarios for Side Menu.

Resource          ../../keywords/common_functions.robot
Resource          ../../keywords/side_menu.robot



Test Setup       Initiate browser and login   
Test Teardown    Shutdown browser


*** Test Cases ***
TC12 - Interacting with side menu All Items 
    [Documentation]    This test verifies interaction with side menu All Items.
    [Tags]  regression    side_menu
    
    Click on side menu
    Verify side menu elements
    Click on side menu All Items
    Verify product list elements

    Click on product name from product list page
    Click on side menu
    Verify side menu elements
    Click on side menu All Items
    Verify product list elements

    
TC13 - Interacting with side menu 'About' 
    [Documentation]    This test verifies interaction with side menu About.
    [Tags]  regression    side_menu 

    Click on side menu
    Verify side menu elements
    Click on side menu About
    Verify About page

TC14 - Interacting with side menu 'Logout' 
    [Documentation]    This test verifies interaction with side menu Logout.
    [Tags]  smoke    side_menu 

    Click on side menu
    Verify side menu elements
    Click on side menu Logout
    Verify Logout

TC15 - Interacting with side menu 'Reset App State' 
    [Documentation]    This test verifies interaction with side menu Reset App State.
    [Tags]  regression    side_menu 

    Click on side menu
    Verify side menu elements
    Click on side menu Reset App State
    
    Click on Add to cart button in product list
    Click on side menu Reset App State
    Verify empty mini cart 
