*** Settings ***
Library     OperatingSystem    

*** Variables ***
${currentDir}    FileMgmt
${srcDir}    srcDir
${destDir}    destDir
${file1}    index1.html
${file2}    index2.html

*** Keywords ***
create a base Dir
    Create Directory    ${currentDir}
    Should Exist    ${currentDir}    

create a src Dir
    ${directoryPath}    Join Path    ${currentDir}    ${srcDir} 
    Create Directory    ${directoryPath}
    Should Exist    ${directoryPath}
    
create a dest Dir
    ${directoryPath}    Join Path    ${currentDir}    ${destDir}
    Create Directory    ${directoryPath}
    Should Exist    ${directoryPath}  
    
Create HtmlFile1
      ${filePath}    Join path    ${currentDir}    ${srcDir}      ${file1}
        Create File   ${filePath}    <h1>Content of File1</h1>
        Should Exist    ${filePath}  
        ${fileSize}    Get File Size    ${filePath}
        Run Keyword If    ${fileSize} > 0    Log to console    File is not empty    
  
Create HtmlFile2
      ${filePath}    Join path    ${currentDir}    ${srcDir}      ${file2}
        Create File   ${filePath}    <h1>Content of File1</h1>
        Should Exist    ${filePath}  
        ${fileSize}    Get File Size    ${filePath}
        Run Keyword If    ${fileSize} > 0    Log to console    File is not empty    
  

Copy File from src to dest
    ${srcPath}    Join path    ${currentDir}    ${srcDir}      ${file1}
    ${destPath}    Join path    ${currentDir}    ${destDir}     
    Copy File    ${srcPath}    ${destPath}
    
   
Move File from src to dest
    ${srcPath}    Join path    ${currentDir}    ${srcDir}      ${file2}
    ${destPath}    Join path    ${currentDir}    ${destDir}     
    Move File    ${srcPath}    ${destPath}
    