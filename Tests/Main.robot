# The main project file

#Run the script:
#robot -d results tests/Main.robot

*** Settings ***
Documentation       Tests for kristopherpepper.com
Library             SeleniumLibrary
Resource            ../Resources/HeaderAndFooter.robot
Resource            ../Resources/HomePageTests.robot
Resource            ../Resources/Coding.robot
Resource            ../Resources/About.robot

*** Test Cases ***
Test initialization
    set selenium speed      .2s     #The test speed
    set selenium timeout    10s

Tests
    #HeaderAndFooter.Page navigation links
    #HeaderAndFooter.Social links
    #HomePageTests.Image Carousel
    #Coding.Page Content
    About.Page Content