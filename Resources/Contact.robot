*** Settings ***
Documentation                   Tests for the home page
Library                         SeleniumLibrary

*** Keywords ***
Page Content and Form
    open browser                https://kristopherpepper.com/contact     chrome
    Maximize Browser Window

    page should contain         Ota yhteyttä/Contact Kris
    page should contain         Täytä alla oleva lomake/Please complete the form below
    page should contain         First Name
    page should contain         Last Name
    page should contain         Sähköposti/Email Address
    page should contain         Aihe/Subject
    page should contain         Viesti/Message
    page should contain         Submit/ Lähetä

    Input Text                  id=name-yui_3_17_2_1_1527162484211_1002-fname-field    John
    Input Text                  id=name-yui_3_17_2_1_1527162484211_1002-lname-field    Smith
    Input Text                  id=email-yui_3_17_2_1_1527162484211_1003-field    johnsmith@johnsmith.com
    Input Text                  id=text-yui_3_17_2_1_1527162484211_1004-field    A subject.
    Input Text                  id=textarea-yui_3_17_2_1_1527162484211_1005-field    A message.
    click button                Submit/ Lähetä
    Sleep                       5s

    Close Browser