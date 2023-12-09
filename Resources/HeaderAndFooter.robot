*** Settings ***
Documentation       Tests for the header and footer
Library             SeleniumLibrary

*** Keywords ***
Page navigation links
    open browser            https://kristopherpepper.com/     chrome
    Maximize Browser Window

    page should contain     Kristopher Pepper
    mouse over              //*[@id="topNav"]/nav/ul/li[1]/a
    mouse over              //*[@id="topNav"]/nav/ul/li[2]/a
    mouse over              //*[@id="topNav"]/nav/ul/li[3]/a
    mouse over              //*[@id="topNav"]/nav/ul/li[4]/a

Social links
    mouse over    xpath=//a[@href='https://www.linkedin.com/in/kristopher-pepper-824184136']
    mouse over   xpath=//a[@href='https://www.shutterstock.com/g/Kristopher+Pepper?rid=263519982']
    mouse over    xpath=//a[@href='https://www.youtube.com/channel/UC_3Et-wk6h3X_BfursY-ITA/featured']
    mouse over    xpath=//a[@href='https://github.com/KrisHHFI']

    Close Browser