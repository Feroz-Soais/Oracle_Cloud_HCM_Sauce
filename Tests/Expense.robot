*** Settings ***
Documentation  This script is used to create an Expense item, Expense Report and Approve an Expense Report
Resource  ../Resources/ExpenseItemCreate.robot
Resource  ../Resources/ExpenseReportCreate.robot
Resource  ../Resources/ExpenseApproveCreate.robot
Library  ../Lib/jutil.py

Test Setup  Begin Web Test
Test Teardown  End Web Test

*** Variables ***



*** Test Cases ***
Test To Create And Approve Expense

    Employee Should Be Able To Creates An Expense Item

    Employee Should Be Able To Create An Expense Report

    Line Manager Should Be Able To Approve An Expense Report

