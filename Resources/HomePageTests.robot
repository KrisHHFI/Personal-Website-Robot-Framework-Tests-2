*** Settings ***
Documentation       Tests for the home page
Library             SeleniumLibrary

*** Keywords ***
Test Initialization
    open browser            https://kristopherpepper.com/     chrome
    Maximize Browser Window

Image Carousel
    Click Element    xpath=//a[@aria-label='Previous Slide']
    Click Element    xpath=//a[@aria-label='Next Slide']

    Close Browser