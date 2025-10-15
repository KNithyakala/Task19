# Task19
# Robot Framework - Keyword Driven Testing
This task is to set up "Robot Framework". Here **Pycharm IDE** is used

**1.Install dependencies**

pip install -r requirements.txt

requirements.txt

robotframework
robotframework-seleniumlibrary

**2.Approach**

Used Keyword of selenium library to automate the application. 

**3.Run Tests**

robot task19.robot

To store reports in seperate folder
robot -d reports Task19.robot

**4.Test Report & Logs**

After execution, Robot Framework automatically generates 
* log.html -> Detailed step execution log
* report.html -> Summary report
* output.xml -> Machine-readable output file
Also captured screenshot using keyword



