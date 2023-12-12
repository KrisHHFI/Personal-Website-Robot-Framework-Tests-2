*** Settings ***
Documentation                   Tests for the home page
Library                         SeleniumLibrary
Resource                        ../Resources/HeaderAndFooter.robot

*** Variables ***
${CodingPageURL} =              https://kristopherpepper.com/coding

*** Keywords ***
Page Content
    open browser                ${CodingPageURL}     chrome
    Maximize Browser Window

    HeaderAndFooter.Header and Footer Tests

    page should contain         Coding Portfolio
    page should contain         My Github
    page should contain         Note: Many projects can be found on my GitHub account- KrisHHFI.

    Close Browser