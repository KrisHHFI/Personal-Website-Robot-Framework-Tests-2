# The main project file

#Run the script:
#robot -d results tests/Main.robot

*** Settings ***
Documentation       Tests for kristopherpepper.com
Library             SeleniumLibrary

*** Test Cases ***
Test initialization
    set selenium speed      .5s     #The test speed
    set selenium timeout    10s

    log                     Tests that the home page is running and functioning properly.
    open browser            https://kristopherpepper.com/     chrome
    Maximize Browser Window

Page Navigation Links
    page should contain     Kristopher Pepper
    page should contain     Photography
    page should contain     Coding
    page should contain     About
    page should contain     Contact Kris

Image Carousel
    Click Element    xpath=//a[@aria-label='Previous Slide']
    Click Element    xpath=//a[@aria-label='Next Slide']

Social Links
    Click Element    xpath=//a[@href='https://www.linkedin.com/in/kristopher-pepper-824184136']
    Click Element    xpath=//a[@href='https://www.shutterstock.com/g/Kristopher+Pepper?rid=263519982']
    Click Element    xpath=//a[@href='https://www.youtube.com/channel/UC_3Et-wk6h3X_BfursY-ITA/featured']
    Click Element    xpath=//a[@href='https://github.com/KrisHHFI']


    Close Browser