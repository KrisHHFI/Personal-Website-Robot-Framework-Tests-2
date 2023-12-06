# The main project file

#Run the script:
#robot -d results tests/Main.robot

*** Settings ***
Documentation       Tests that the home page is running and functioning properly
Library             SeleniumLibrary

*** Test Cases ***
Home page should be running
    [Documentation]     Tests that the home page is running

#Initialise Selenium
    set selenium speed      .2s     #The test speed
    set selenium timeout    10s

    log                     Starting the test case!
    open browser            https://kristopherpepper.com/     chrome