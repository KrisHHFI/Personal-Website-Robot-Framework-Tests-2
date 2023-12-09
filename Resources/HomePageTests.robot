*** Settings ***
Documentation       Tests for the home page
Library             SeleniumLibrary

*** Keywords ***
Image Carousel
    open browser            https://kristopherpepper.com/     chrome
    Maximize Browser Window

    Click Element    xpath=//a[@aria-label='Previous Slide']
    Click Element    xpath=//a[@aria-label='Next Slide']

    Close Browser