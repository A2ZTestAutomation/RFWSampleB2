*** Settings ***
Resource    resource.robot

*** Test Cases ***
Create Dir Testcase
    create a base Dir
    create a src Dir
    create a dest Dir
    Create HtmlFile1
    Copy File from src to dest
    Create HtmlFile2
    Move File from src to dest
