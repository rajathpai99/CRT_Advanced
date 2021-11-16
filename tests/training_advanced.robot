*** Settings ***
Documentation                Tests for Qentinel Pace Foundation training
Resource                     ../resources/keywords.robot
Resource                     ../resources/locators.robot
Library                      QWeb
Suite Setup                  Start Suite
Suite Teardown               End Suite

*** Test Cases ***
Login to Salesforce and create a lead 
    [Documentation]          Navigate to login page, create a lead
    [Tags]                   Create a lead
    Appstate                 Sign In
    ClickText                App Launcher
    TypeText                 Search apps and items...    sales
    ClickText                Sales