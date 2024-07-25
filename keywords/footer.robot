*** Settings ***
Documentation       Keywords for Footer page tests.

Resource            common_functions.robot


*** Keywords ***
Verify footer elements
    Scroll Element Into View         ${FOOTER_X_LOCATOR}
    Wait Until Element Is Visible    ${FOOTER_X_LOCATOR}              10s    error=Footer X icon not displayed.
    Wait Until Element Is Visible    ${FOOTER_FACEBOOK_LOCATOR}       10s    error=Footer Facebook icon not displayed.
    Wait Until Element Is Visible    ${FOOTER_LINKEDIN_LOCATOR}       10s    error=Footer Linkedin icon not displayed.

Click on X footer icon
    ${original_handles}  Get Window Handles
    Click Element    ${FOOTER_X_LOCATOR}
    Sleep    10s

    ${new_handles}  Get Window Handles
    Switch Window  title=Sauce Labs (@saucelabs) / X
    Location Should Be    https://x.com/saucelabs

    Should Be True  ${original_handles} != ${new_handles}
    Switch Window    title=Swag Labs

Click on Facebook footer icon
    ${original_handles}  Get Window Handles
    Click Element    ${FOOTER_FACEBOOK_LOCATOR}
    Sleep    10s
    
    ${new_handles}  Get Window Handles

    Switch Window  title=Sauce Labs | San Francisco CA | Facebook
    Location Should Be    https://www.facebook.com/saucelabs

    Should Be True  ${original_handles} != ${new_handles}
    Switch Window    title=Swag Labs

Click on Linkedin footer icon
    ${original_handles}  Get Window Handles
    Click Element    ${FOOTER_LINKEDIN_LOCATOR}
    Sleep    10s

    ${new_handles}  Get Window Handles
    Switch Window    title=Sauce Labs | LinkedIn
    Location Should Be    https://www.linkedin.com/company/sauce-labs/

    Should Be True  ${original_handles} != ${new_handles}
    Switch Window    title=Swag Labs