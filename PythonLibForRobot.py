import pandas as pd

class PythonLibForRobot(object):
    def dictonary_of_locator(self):
        df = pd.read_excel('G:\Robo\ExcelTry.xlsx',sheetname="Locator",header=0)
        dt=df.to_dict('list')
        dictq = {}
        for x,y in zip(dt['LocatorKey'],dt['LocatorValue']):dictq[x] = y
        return   (dictq)
    def dictonary_of_test_data(self,TestName):
        df = pd.read_excel('G:\Robo\ExcelTry.xlsx',sheetname="Testdata",header=0)
        dt=df.to_dict('list')
        dictq = {}
        for x,y in zip(dt['TestData'],dt[TestName]):dictq[x] = y
        return dictq
# obj1 = PythonLibForRobot()
# obj1.excel_to_dict_of_locator("FirstName")