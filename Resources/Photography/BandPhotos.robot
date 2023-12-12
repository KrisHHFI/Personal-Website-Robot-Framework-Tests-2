*** Settings ***
Documentation               Tests for the home page
Library                     SeleniumLibrary
Resource                    ../Resources/HeaderAndFooter.robot

*** Variables ***
${BandPhotosPageURL} =      https://kristopherpepper.com/band-photos
${CarouselLeftButton} =     xpath=//a[@aria-label='Previous Slide']
${CarouselRightButton} =    xpath=//a[@aria-label='Next Slide']

*** Keywords ***
Band Photos Page Tests
    open browser            ${BandPhotosPageURL}     chrome
    Maximize Browser Window

    HeaderAndFooter.Header and Footer Tests

    Repeat Keyword	        5 times     Click Element               ${CarouselLeftButton}
    Repeat Keyword	        5 times     Click Element               ${CarouselRightButton}

    Close Browser