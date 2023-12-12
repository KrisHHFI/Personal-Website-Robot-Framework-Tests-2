*** Settings ***
Documentation               Tests for the home page
Library                     SeleniumLibrary
Resource                    ../Resources/HeaderAndFooter.robot

*** Variables ***
${HomePageURL} =            https://kristopherpepper.com/
${CarouselLeftButton} =     xpath=//a[@aria-label='Previous Slide']
${CarouselRightButton} =    xpath=//a[@aria-label='Next Slide']

*** Keywords ***
Home Page Tests
    open browser            ${HomePageURL}     chrome
    Maximize Browser Window

    HeaderAndFooter.Header and Footer Tests

    Repeat Keyword	        5 times     Click Element               ${CarouselLeftButton}
    Repeat Keyword	        5 times     Click Element               ${CarouselRightButton}

    Close Browser