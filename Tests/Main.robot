# The main project file

#Run the script:
#robot -d results tests/Main.robot

*** Settings ***
Documentation       Tests for kristopherpepper.com
Library             SeleniumLibrary
Resource            ../Resources/HeaderAndFooter.robot
Resource            ../Resources/HomePageTests.robot

*** Test Cases ***
Test initialization
    set selenium speed      .2s     #The test speed
    set selenium timeout    10s

Tests
    HeaderAndFooter.Test initialization
    HeaderAndFooter.Page navigation links
    HeaderAndFooter.Social links

    HomePageTests.Test Initialization
    HomePageTests.Image Carousel