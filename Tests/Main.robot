# The main project file

#Run the script: robot -d results tests/Main.robot

*** Settings ***
Documentation               Tests for kristopherpepper.com
Library                     SeleniumLibrary
Resource                    ../Resources/HeaderAndFooter.robot
Resource                    ../Resources/Photography/HomePage.robot
Resource                    ../Resources/Photography/BandPhotos.robot
Resource                    ../Resources/Photography/Prints.robot
Resource                    ../Resources/Photography/Clients.robot
Resource                    ../Resources/Coding.robot
Resource                    ../Resources/About.robot
Resource                    ../Resources/Contact.robot

*** Test Cases ***
Test initialization
    set selenium speed      .2s     #The test speed
    set selenium timeout    10s

Tests
    HomePage.Home Page Tests
    BandPhotos.Band Photos Page Tests
    Prints.Prints Page Tests
    Clients.Clients Page Tests
    Coding.Page Content
    About.Page Content
    Contact.Page Content and Form