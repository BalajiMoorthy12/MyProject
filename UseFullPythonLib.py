from robot.libraries.BuiltIn import BuiltIn



class UseFullPythonLib(object):
    

    def __init__(self):
        self.seleniumDriver = None
        
        self.driver=None
        
    def search_text_byLink_Sele(self,searchName):
        
       # self.seleniumDriver= BuiltIn().get_library_instance('Selenium2Library')
       #@ self.driver = self.seleniumDriver._current_browser()
        tempDriver=self.driver.find_element_by_link_text(searchName)
        tempDriver.click()
        #self.driver.implicitly_wait(2)
        #(self.driver.find_element_by_xpath("//input[@name='username']")).send_keys("balaji12")
        
    def window_handle_popup(self):
#         WebElement browser=driver.findElement(By.name("uploadFile"));
#         browser.click();
#         driver.switchTo().window("File Upload");
#         WebElement el=driver.findElement(By.name("fileName"));
#         el.sendKeys("E:\\DVBScheduleEvent.xml");