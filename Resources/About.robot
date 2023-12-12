*** Settings ***
Documentation                   Tests for the home page
Library                         SeleniumLibrary
Resource                        ../Resources/HeaderAndFooter.robot

*** Variables ***
${AboutPageURL} =               https://kristopherpepper.com/about

*** Keywords ***
Page Content
    open browser                ${AboutPageURL}     chrome
    Maximize Browser Window

    HeaderAndFooter.Header and Footer Tests

    page should contain         About
    page should contain         My Photography
    page should contain         My Coding
    page should contain         Contact Kris

    Close Browser