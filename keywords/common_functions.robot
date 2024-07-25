*** Settings ***
Documentation       A library with common keywords for web testing.

Resource            ../resources/locators.robot
Resource            ../resources/variables.robot
Resource            login.robot
Resource            product_list.robot
Resource            checkout.robot
Resource            cart.robot
Library             SeleniumLibrary
Library             String
Library             Collections

*** Variables ***
${SAUCEDEMO_URL}    https://www.saucedemo.com/
${BROWSER}      chrome


*** Keywords ***
Initiate browser
    Open Browser    ${SAUCEDEMO_URL}    ${BROWSER}
    Maximize Browser Window
    Access the homepage of Sauce Demo

Initiate browser and login
    Open Browser    ${SAUCEDEMO_URL}    ${BROWSER}
    Maximize Browser Window
    Access the homepage of Sauce Demo
    Login  ${STANDARD_USER}  ${VALID_PASSWORD}

Shutdown browser
    Close All Browsers

Access the homepage of Sauce Demo
    Go To    ${SAUCEDEMO_URL}
    Wait Until Element Is Visible    ${LOGIN_HEADER_LOCATOR}    10s    error=Header "Swag Labs" not displayed
    Verify if page title is "Swag Labs"

Verify if page title is "${TITLE}"
    Wait Until Page Contains    ${TITLE}    10s    error=Page does not contain "${TITLE}"
    Title Should Be    ${TITLE}    error=Page title is not "${TITLE}"

Generate Random Male Name
    ${first_name}  FakerLibrary.First Name Male
    RETURN  ${first_name}

Generate Random Last Name
    ${last_name}  FakerLibrary.Last Name
    RETURN  ${last_name}

Generate Random Postal Code
    ${last_name}  FakerLibrary.Postalcode
    RETURN  ${last_name}