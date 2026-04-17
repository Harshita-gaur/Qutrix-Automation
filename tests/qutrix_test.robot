*** Settings ***
Library    SeleniumLibrary
Library    DateTime
*** Variables ***
${URL}    https://qutrix.io
${BROWSER}    chrome

*** Test Cases ***
Qutrix Automation Test
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

    Wait Until Page Contains Element    xpath=(//a[contains(text(),'Company')])[2]    10s

    Mouse Over    xpath=(//a[contains(text(),'Company')])[2]
    Wait Until Element Is Visible    xpath=//a[contains(text(),'Explore Career')]    10s
    Click Element    xpath=//a[contains(text(),'Explore Career')]

    Wait Until Page Contains    Career    10s

    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)

    Wait Until Element Is Visible    xpath=//a[.//span[contains(text(),'Click')]]    10s
    Click Element    xpath=//a[.//span[contains(text(),'Click')]]

    Switch Window    NEW

    Wait Until Page Contains Element    xpath=//body    10s

    ${timestamp}=    Get Time    epoch
    Capture Page Screenshot    screenshots/result_${timestamp}.png

    Close Browser