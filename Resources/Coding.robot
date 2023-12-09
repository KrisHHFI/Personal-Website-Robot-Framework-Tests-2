*** Settings ***
Documentation       Tests for the home page
Library             SeleniumLibrary

*** Keywords ***
Page Content
    open browser            https://kristopherpepper.com/coding-portfolio     chrome
    Maximize Browser Window

    page should contain     Coding Portfolio
    page should contain     My Github

    Close Browser