*** Settings ***
Documentation                    Reusable keywords and variables for Qentinel Pace Foundation training
Library                          QWeb
Library                          String

*** Variables ***
${BROWSER}                       chrome
${URL}                           http://login.salesforce.com/

*** Keywords ***
Appstate
    [Documentation]              Checks which actions should be taken prior to testing and does them
    [Arguments]                  ${state}
    ${state}=                    Convert To Lowercase              ${state}
    Run Keyword If               '${state}'=='sign in'
    ...                          Sign In

Sign In
    GoTo                         ${URL}
    TypeText                     Username                          rpai@copado.com.devone
    TypeSecret                   Password                          ${PASSWORD_SFD1}
    ClickText                    Log In                       

Start Suite
    OpenBrowser                  about:blank                       ${BROWSER}
    SetConfig                    SearchMode                        draw

End Suite
    CloseAllBrowsers