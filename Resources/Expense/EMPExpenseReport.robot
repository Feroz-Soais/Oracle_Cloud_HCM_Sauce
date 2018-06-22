*** Settings ***

Resource  PO/ExpenseReportCreatePage.robot
Resource  CommonWeb.robot


*** Variables ***

*** Keywords ***
Create an Expense Report
    Navigate to Expense
    Find And Click Expense Report
    Click Create Expense Report
    Take Screenshot  ExpenseReportSelection
    Input Purpose And Manager Name
    Click Add Existing Report
    Take Screenshot  ReportMakingPage
    Logout of Application

Input Purpose And Manager Name
    Input Purpose
    Input ManagerName



Employee Should Be Able To Create An Expense Report
        [Documentation]  This script is used to create an Expense Report in Oracle HCM
        [Tags]  Smoke
         CommonWeb.Login to the Application  ${Employee_Email}  ${Employee_Pwd}
         ExpenseReportCreate.Create an Expense Report


Approve Expense Report
     Navigate to Expense
     Go To Travel And Expenses
     Navigate To Approve Reports
     Select And Approve Report
     Logout of Application

Line Manager Should Be Able To Approve An Expense Report
        [Documentation]  This script is used to Approve an Expense Report in Oracle HCM
        [Tags]  Smoke
         CommonWeb.Login As Manager   ${Manager_Email}  ${Manager_Pwd}
         ExpenseApproveCreate.Approve Expense Report

