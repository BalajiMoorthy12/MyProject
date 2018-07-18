import pandas as pd

class PythonLibForRobot(object):
    def excel_to_dict_of_locator(self,ReqVal):
        df = pd.read_excel('G:\Robo\ExcelTry.xlsx',sheetname="Locator",header=0)
        dt=df.to_dict('list')
        #print(dt)
        dictq = {}
        for x,y in zip(dt['LocatorKey'],dt['LocatorValue']):dictq[x] = y
        print(dictq)
        if ReqVal in dictq: return   (dictq[ReqVal])
        
        
    def excel_to_dict_of_testdata(self,ReqVal,TestName):
        df = pd.read_excel('G:\Robo\ExcelTry.xlsx',sheetname="Testdata",header=0)
        dt=df.to_dict('list')
        dictq = {}
        for x,y in zip(dt['TestData'],dt[TestName]):dictq[x] = y
        if ReqVal in dictq: return   (dictq[ReqVal])
    
    
#     
obj1 = PythonLibForRobot()
print(obj1.excel_to_dict_of_locator("FirstName"))