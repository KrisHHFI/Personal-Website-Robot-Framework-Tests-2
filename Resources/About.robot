*** Settings ***
Documentation       Tests for the home page
Library             SeleniumLibrary

*** Keywords ***
Page Content
    open browser            https://kristopherpepper.com/kris     chrome
    Maximize Browser Window

    page should contain     About
    page should contain     My Photography
    page should contain     My Coding
    page should contain     Contact Kris

    Close Browser