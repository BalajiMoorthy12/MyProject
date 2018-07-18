*** Settings ***
Documentation    Robot test wrriten in Gherkin style with chrome
...    
Library    Selenium2Library    
Library    PythonLibForRobot.py    
Resource    KeywordLibrary.robot
Suite Setup    Set the locator value from the excel to dictonary
Test Setup     Set the test data to dictonary and create a path for screenshot 



*** Test Cases ***
TC_2
    Given Open firefox with google as default page
        And Navigate to demo site
    When Enter user first name and last name
        And Select the radio button for gender and year of experience
        And Enter the date and select the profession
    Then Select the continent and click on save 