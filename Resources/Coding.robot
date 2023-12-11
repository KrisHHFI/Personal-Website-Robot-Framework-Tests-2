*** Settings ***
Documentation                   Tests for the home page
Library                         SeleniumLibrary
Resource                        ../Resources/HeaderAndFooter.robot

*** Variables ***
${CodingPageURL} =                    https://kristopherpepper.com/coding-portfolio

*** Keywords ***
Page Content
    open browser                ${CodingPageURL}     chrome
    Maximize Browser Window

    HeaderAndFooter.Test

    page should contain         Coding Portfolio
    page should contain         My Github

    Close Browser