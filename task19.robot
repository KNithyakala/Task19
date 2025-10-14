*** Settings ***
Library     SeleniumLibrary

*** Variables ***
#Used Scalar variable to store url,browser,username and password
${URL}      https://robotsparebinindustries.com/
${BROWSER}  chrome
${USERNAME}  maria
${PASSWORD}  thoushallnotpass

*** Test Cases ***
Verify if Login page opens and user able to logout
    #Open the browser and navigate to the application
    Open Browser    ${URL}      ${BROWSER}
    #Input valid credentials and submit the form
    Input Text  id=username   ${USERNAME}
    Input Text  id=password   ${PASSWORD}
    Click Button  xpath=//button[text()="Log in"]
    Capture Page Screenshot
    #Verify the successful login
    Wait Until Page Contains Element  id=firstname  timeout=10s
    Capture Page Screenshot
    #Logout the application
    Click Button  id=logout
    Wait Until Element Is Visible  id=username  timeout=10s
    Capture Page Screenshot
    Close Browser