*** Settings ***
Documentation                       Tests for the home page
Library                             SeleniumLibrary
Resource                            ../Resources/HeaderAndFooter.robot

*** Variables ***
${ClientsPageURL} =                https://kristopherpepper.com/clients
${Logo1} =                         https://images.squarespace-cdn.com/content/v1/587b630aebbd1ab22efeeb6b/67e7dae6-df08-4508-ae57-54c410da0dd2/IMG_6797.PNG
${Logo2} =                         https://images.squarespace-cdn.com/content/v1/587b630aebbd1ab22efeeb6b/1546986508444-XTLLWPUABY99F707LJL3/2018_StartupSesame_Logo_Black+%281%29.jpg
${Logo3} =                         https://images.squarespace-cdn.com/content/v1/587b630aebbd1ab22efeeb6b/909a35b0-efbc-4f38-b3de-fe0398cc3030/Kodin+tasapaino_logo+%281%29.png

*** Keywords ***
Clients Page Tests
    open browser                    ${ClientsPageURL}     chrome
    Maximize Browser Window

    HeaderAndFooter.Header and Footer Tests

    page should contain             Clients & Friends

    Wait Until Element Is Visible   xpath=//img[@src="${Logo1}"]    timeout=5s
    Wait Until Element Is Visible   xpath=//img[@src="${Logo2}"]    timeout=5s
    Wait Until Element Is Visible   xpath=//img[@src="${Logo3}"]    timeout=5s

    Close Browser