*** Settings ***
Documentation       Test Scenarios for Footer.

Resource          ../../keywords/common_functions.robot
Resource          ../../keywords/footer.robot

Test Setup       Initiate browser and login   
Test Teardown    Shutdown browser


*** Test Cases ***
TC11 - Interacting with footer social media icons
    [Documentation]    This test verifies interaction with footer social media icons.
    [Tags]  regression    footer
    
    Verify footer elements
    Click on X footer icon
    Click on Facebook footer icon
    Click on Linkedin footer icon