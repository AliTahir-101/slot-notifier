*** Settings ***
Documentation    Embassy Appointment Slot Notifier.
Library    SeleniumLibrary
Library    ../resources/custom-libraries/sendmail.py
Resource    ../../config/config.robot
Resource    ../resources/keywords.robot

*** Test Cases ***
Look For Slot Avalability
    Close All Browsers
    Open Browser To Login Page    ${LOGIN URL}    ${BROWSER}    ${retry}    ${retry-interval}
    Login to the portal    ${retry}    ${retry-interval}   ${username}     ${password}    ${login btn}    ${new booking btn}
    Start New Booking    ${new booking btn}    ${retry}    ${retry-interval}    ${sub cat opt}
    Check if slot is Avaiable and notify    ${inner html}
    Logout from portal
    [Teardown]    Close Browser