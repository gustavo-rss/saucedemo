*** Settings ***
Documentation       Test Scenarios for Login page.

Resource          ../../keywords/common_functions.robot
Resource          ../../keywords/login.robot

Test Setup          Initiate browser
Test Teardown       Shutdown browser


*** Test Cases ***
TC01 - Login with valid credentials
    [Documentation]    This test verifies 'Standard User' credentials able to login.
    [Tags]  smoke    regression    login
    
    Login    ${STANDARD_USER}    ${VALID_PASSWORD}
    Verify product list elements

TC02 - Login with invalid credentials
    [Documentation]    This test verifies 'Invalid User' credentials not able to login.
    [Tags]  regression    login
    
    Login    ${INVALID_USER}    ${INVALID_PASSWORD}
    Verify login error message
    
    
TC03 - Login with locked out user credentials
    [Documentation]    This test verifies 'Locked Out User' credentials not able to login.
    [Tags]  regression    login
    
    Login    ${LOCKED_OUT_USER}    ${VALID_PASSWORD}
    Verify login error message

TC04 - Login with problem user credentials
    [Documentation]    This test verifies 'Problem User' credentials able to login.
    [Tags]  regression    login
    
    Login    ${PROBLEM_USER}    ${VALID_PASSWORD}
    Verify product list elements

TC05 - Login with performance glitch user credentials
    [Documentation]    This test verifies 'Performance Glitch User' credentials able to login.
    [Tags]  regression    login
    
    Login    ${PERFORMANCE_GLITCH_USER}    ${VALID_PASSWORD}
    Verify product list elements

TC06 - Login with visual user user credentials
    [Documentation]    This test verifies 'Visual User' credentials able to login.
    [Tags]  regression    login
    
    Login    ${VISUAL_USER}    ${VALID_PASSWORD}
    Verify product list elements