*** Settings ***
Documentation                   Tests for the header and footer
Library                         SeleniumLibrary

*** Variables ***
${PhotographyNavLink} =         //*[@id="topNav"]/nav/ul/li[1]/a
${CodingNavLink} =              //*[@id="topNav"]/nav/ul/li[2]/a
${AboutNavLink} =               //*[@id="topNav"]/nav/ul/li[3]/a
${ContactNavLink} =             //*[@id="topNav"]/nav/ul/li[4]/a

${LinkedInSocialLink} =         xpath=//a[@href='https://www.linkedin.com/in/kristopher-pepper-824184136']
${ShutterStockSocialLink} =     xpath=//a[@href='https://www.shutterstock.com/g/Kristopher+Pepper?rid=263519982']
${YouTubeSocialLink} =          xpath=//a[@href='https://www.youtube.com/channel/UC_3Et-wk6h3X_BfursY-ITA/featured']
${GitHubSocialLink} =           xpath=//a[@href='https://github.com/KrisHHFI']

*** Keywords ***
Test
    page should contain         Kristopher Pepper
    mouse over                  ${PhotographyNavLink}
    mouse over                  ${CodingNavLink}
    mouse over                  ${AboutNavLink}
    mouse over                  ${ContactNavLink}

    mouse over                  ${LinkedInSocialLink}
    mouse over                  ${ShutterStockSocialLink}
    mouse over                  ${YouTubeSocialLink}
    mouse over                  ${GitHubSocialLink}