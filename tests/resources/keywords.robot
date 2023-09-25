*** Keywords ***
Open Browser To Login Page
    [Arguments]    ${LOGIN URL}    ${BROWSER}    ${retry}    ${retry-interval}
    Open Browser    ${LOGIN URL}    ${BROWSER}    chrome_options=--headless
    Wait Until Keyword Succeeds  ${retry}  ${retry-interval}  Element Should Be Visible  id:onetrust-accept-btn-handler
    Wait Until Keyword Succeeds  ${retry}  ${retry-interval}  Element Should Be Enabled  id:onetrust-accept-btn-handler
Login to the portal
    [Arguments]    ${retry}    ${retry-interval}   ${username}     ${password}    ${login btn}    ${new booking btn}
    Click Element	id:onetrust-accept-btn-handler
    Wait Until Keyword Succeeds  ${retry}  ${retry-interval}  Element Should Be Visible  xpath://input[@id='mat-input-0']
    Wait Until Keyword Succeeds  ${retry}  ${retry-interval}  Element Should Be Enabled  xpath://input[@id='mat-input-0']
    Input Text    xpath://input[@id='mat-input-0']    ${username}
    Input Text    xpath://input[@id='mat-input-1']    ${password}
    Wait Until Keyword Succeeds  ${retry}  ${retry-interval}    Element Should Be Visible    ${login btn}
    Click Button    ${login btn}
    Wait Until Keyword Succeeds  ${retry}  ${retry-interval}  Element Should Be Visible  ${new booking btn}
    Wait Until Keyword Succeeds  ${retry}  ${retry-interval}  Element Should Be Enabled  ${new booking btn}
Start New Booking
    [Arguments]      ${new booking btn}    ${retry}    ${retry-interval}    ${sub cat opt}
    # Execute JavaScript  document.evaluate("${new booking btn}", document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).snapshotItem(0).click();
    Sleep    5 seconds
    Click Element    ${new booking btn}
    Wait Until Keyword Succeeds  ${retry}  ${retry-interval}  Element Should Be Visible  ${sub cat opt}
    Sleep    5 seconds
    Click Element    ${sub cat opt}
    Sleep    5 seconds
    Click Element    xpath://body[1]/div[5]/div[2]/div[1]/div[1]/div[1]/mat-option[3]/span[1]
    Wait Until Keyword Succeeds  ${retry}  ${retry-interval}  Element Should Be Visible  xpath://body[1]/app-root[1]/div[1]/div[1]/app-eligibility-criteria[1]/section[1]/form[1]/mat-card[1]/form[1]/div[4]/div[1]
Check if slot is Avaiable and notify
    [Arguments]    ${inner html}
    ${inner html}=    Get Element Attribute    xpath://body[1]/app-root[1]/div[1]/div[1]/app-eligibility-criteria[1]/section[1]/form[1]/mat-card[1]/form[1]/div[4]/div[1]    innerHTML
    log to console    ${inner html}
    Send Mail     ${inner html}
    log to console    Email Sent!
Logout from portal
    Click Element    id:navbarDropdown
    Click Element    css:.dropdown-item.bg-brand-orange.text-white.cursor-pointer.c-inherit
    

