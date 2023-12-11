*** Settings ***
Documentation                   Tests for the home page
Library                         SeleniumLibrary
Resource                        ../Resources/HeaderAndFooter.robot

*** Variables ***
${HomePageURL} =                    https://kristopherpepper.com/
${CarouselLeftButton} =         xpath=//a[@aria-label='Previous Slide']
${CarouselRightButton} =        xpath=//a[@aria-label='Next Slide']

*** Keywords ***
Image Carousel
    open browser                ${HomePageURL}     chrome
    Maximize Browser Window

    HeaderAndFooter.Test

    Click Element               ${CarouselLeftButton}
    Click Element               ${CarouselRightButton}

    Close Browser