*** Settings ***
Documentation       Keywords for Login page tests.

Resource            common_functions.robot


*** Keywords ***
Login
    [Arguments]  ${username}  ${password}

    Input Text       ${LOGIN_USERNAME_LOCATOR}          ${username}
    Input Password   ${LOGIN_PASSWORD_LOCATOR}          ${password}
    Click Button     ${LOGIN_BTN_LOCATOR}


Verify login error message
    Wait Until Element Is Visible    ${LOGIN_ERROR_MESSAGE_LOCATOR}    10s    error=Login error message not displayed.