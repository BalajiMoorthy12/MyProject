*** Settings ***
Documentation    Keyword suite for the main code
...    

Library    Selenium2Library    
Library    PythonLibForRobot.py 
Library    Collections      
#Resource    ../MyProject/libspecs/MainRobot.robot 
*** Variables ***

${LocatorDictonary}
${TestDataDictionary}    


*** Keywords ***
Set the locator value from the excel to dictonary
    ${LocatorDictonary}    Dictonary Of Locator
    Set Suite Variable    ${LocatorDictonary} 
Set the test data to dictonary and create a path for screenshot
    ${TestDataDictionary}    Dictonary Of Test Data    ${TEST_NAME} 
    Set Test Variable    ${TestDataDictionary}    
    Set Screenshot Directory    ${TEST_NAME}
    
Open firefox with google as default page
    ${UrlToOpen}    Get From Dictionary    ${TestDataDictionary}    URL2
    ${BrowserToOpen}    Get From Dictionary    ${TestDataDictionary}    Browser
    Open Browser   ${UrlToOpen}    ${BrowserToOpen}
    Maximize Browser Window
    Capture Page Screenshot    Google.png
Navigate to demo site
    ${url}    Get From Dictionary    ${TestDataDictionary}    URL
    Go To    ${url}
    Capture Page Screenshot    Demo.png
Enter user first name and last name
    ${FirstNameLocation}    Get From Dictionary    ${LocatorDictonary}    FirstName
    ${FirstNameToEnter}    Get From Dictionary    ${TestDataDictionary}    FirstName
    Input Text    ${FirstNameLocation}    ${FirstNameToEnter}
    ${LastNameLocation}    Get From Dictionary    ${LocatorDictonary}    LastName
    ${LastNameToEnter}    Get From Dictionary    ${TestDataDictionary}    LastName
    Input Text    ${LastNameLocation}    ${LastNameToEnter}
    Capture Page Screenshot    UserName.png
Select the radio button for gender and year of experience
    ${GenderLoc}    Get From Dictionary    ${LocatorDictonary}    Sex
    ${GenderToSelect}    Get From Dictionary    ${TestDataDictionary}    Sex
    Select Radio Button    ${GenderLoc}    ${GenderToSelect}
    ${YearOfExperienceLocation}    Get From Dictionary    ${LocatorDictonary}    Years Of Experience
    ${YearOfExperienceToSelect}    Get From Dictionary    ${TestDataDictionary}    Years Of Experience
    Select Radio Button    ${YearOfExperienceLocation}    ${YearOfExperienceToSelect}
    Capture Page Screenshot    RadioButtons.png
Enter the date and select the profession  
    ${DateLocation}    Get From Dictionary    ${LocatorDictonary}    date
    ${DateToEnter}    Get From Dictionary    ${TestDataDictionary}    date
    Input Text    ${DateLocation}    ${DateToEnter}
    ${Proffesion}    Get From Dictionary    ${LocatorDictonary}    Profession
    Select Checkbox    ${Proffesion}
    Capture Page Screenshot    Date.png
Select the continent and click on save
    ${ContinentLocation}    Get From Dictionary    ${LocatorDictonary}    Continent
    ${ContinentToSelect}    Get From Dictionary    ${TestDataDictionary}    Continent
    Select From List    ${ContinentLocation}    ${ContinentToSelect}
        
    ${ButtonToClick}    Get From Dictionary    ${LocatorDictonary}    Button
    Capture Page Screenshot    Continent.png
    Click Button    ${ButtonToClick}
    
    
   
    
     
    
    
    
    
    
    
    