*** Settings ***
Documentation                   Tests for the home page
Library                         SeleniumLibrary

*** Variables ***
${CarouselLeftButton} =         xpath=//a[@aria-label='Previous Slide']
${CarouselRightButton} =        xpath=//a[@aria-label='Next Slide']

*** Keywords ***
Image Carousel
    open browser                https://kristopherpepper.com/     chrome
    Maximize Browser Window

    Click Element               ${CarouselLeftButton}
    Click Element               ${CarouselRightButton}

    Close Browser