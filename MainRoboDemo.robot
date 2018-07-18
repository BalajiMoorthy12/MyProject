*** Settings ***
Documentation    Main Robot File
...    
Library    Selenium2Library    
Library    PythonLibForRobot.py    
Resource    KeywordLibrary.robot

Suite Setup    Set the locator value from the excel to dictonary
Test Setup     Set the test data to dictonary and create a path for screenshot 


*** Test Cases ***
TC_2
    Open firefox with google as default page
    Navigate to demo site
    Enter user first name and last name