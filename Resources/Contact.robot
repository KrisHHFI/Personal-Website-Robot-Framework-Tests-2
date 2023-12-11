*** Settings ***
Documentation                   Tests for the home page
Library                         SeleniumLibrary
Resource                        ../Resources/HeaderAndFooter.robot

*** Variables ***
${ContactPageURL} =             https://kristopherpepper.com/contact
${FirstNameInputBox} =          id=name-yui_3_17_2_1_1527162484211_1002-fname-field
${LastNameInputBox} =           id=name-yui_3_17_2_1_1527162484211_1002-lname-field
${EmailNameInputBox} =          id=email-yui_3_17_2_1_1527162484211_1003-field
${SubjectInputBox} =            id=text-yui_3_17_2_1_1527162484211_1004-field
${MessageInputBox} =            id=textarea-yui_3_17_2_1_1527162484211_1005-field

*** Keywords ***
Page Content and Form
    open browser                ${ContactPageURL}     chrome
    Maximize Browser Window

    HeaderAndFooter.Test

    page should contain         Ota yhteyttä/Contact Kris
    page should contain         Täytä alla oleva lomake/Please complete the form below
    page should contain         First Name
    page should contain         Last Name
    page should contain         Sähköposti/Email Address
    page should contain         Aihe/Subject
    page should contain         Viesti/Message
    page should contain         Submit/ Lähetä

    Input Text                  ${FirstNameInputBox}    John
    Input Text                  ${LastNameInputBox}    Smith
    Input Text                  ${EmailNameInputBox}    johnsmith@johnsmith.com
    Input Text                  ${SubjectInputBox}    A subject.
    Input Text                  ${MessageInputBox}    A message.
    click button                Submit/ Lähetä
    Sleep                       5s

    Close Browser