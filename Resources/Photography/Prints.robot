*** Settings ***
Documentation                       Tests for the home page
Library                             SeleniumLibrary
Resource                            ../Resources/HeaderAndFooter.robot

*** Variables ***
${PrintsPageURL} =                  https://kristopherpepper.com/prints
${Print1} =                         https://images.squarespace-cdn.com/content/v1/587b630aebbd1ab22efeeb6b/1548769767304-1GT8LS077WPRS2ERFI2K/DSC02940.jpg?format=300w
${Print2} =                         https://images.squarespace-cdn.com/content/v1/587b630aebbd1ab22efeeb6b/1548769947132-BCEKGGM53GNP9HYV9FGN/DSC02945.jpg?format=300w
${Print3} =                         https://images.squarespace-cdn.com/content/v1/587b630aebbd1ab22efeeb6b/1548770053897-ACB47CW09ZQ5EFBGHX93/DSC02935-Edit.jpg?format=300w

*** Keywords ***
Prints Page Tests
    open browser                    ${PrintsPageURL}     chrome
    Maximize Browser Window

    HeaderAndFooter.Header and Footer Tests

    page should contain             Series 1

    Wait Until Element Is Visible   xpath=//img[@src="${Print1}"]    timeout=5s
    Wait Until Element Is Visible   xpath=//img[@src="${Print2}"]    timeout=5s
    Wait Until Element Is Visible   xpath=//img[@src="${Print3}"]    timeout=5s

    Close Browser