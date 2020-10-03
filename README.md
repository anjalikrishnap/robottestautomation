# robottestautomation
Sample Amazon web test using Robot Framework and SeleniumLibrary
<h1>A practice automation test framework for Amazon.com<h1>
Robot Framework is a generic open source automation framework for acceptance testing and acceptance test-driven development. This project introduces the basic Robot Framework with Selenium Library for testing some of the scenarios of the public site Amazon,To get an understanding of how robot tests can be written executed and how the logs looks like. 
Contents:
Test case files are located in Tests directory and the resource files used by them are located in the Resource directory. Necessary input data has been updated in DATAS and custom python libraries are inside Customlib directory.
Tests:
TC_amazon_1_Login.robot
A test suite with tests for valid login and also covers invalid login scenarios. This test has a work flow that is created using keywords in page object located in Resource directory. The invalid tests are data driven which takes input from external csv file and covers different invalid login scenario and validate the error messages passed from input file. Data has been read using python custom library which is located in CustomLib directory.
TC_amazon_2_product.robot
This Test suite demonstrates tests for valid product search and also covers invalid product searching scenarios. This test has a work flow that is created using keywords in page object file which in turn used by amazon.robot located in Resource directory. 
TC_amazon_cart_checkout.robot
This Test suite covers the scenarios like ‘add product to cart’ and ‘apply promo code while checkout’. This test has a work flow that is created using keywords in page object file which in turn used by amazon.robot located in Resource directory.
TC_amazon_user_updates.robot
This Test suite covers the scenarios related to user account like ‘add address fields’ and ‘amazon pay balance’. This test has a work flow that is created using keywords in page object file which in turn used by amazon.robot located in Resource directory.


gherkin_login.robot
A test suite with a single Gherkin style test.
Resource
The following are the page object files which has been utilized  by each test cases. And they utilize keywords from   SeleniumLibrary.
1.	address.robot 
2.	amazon_login.robot 
3.	amazon_nav.robot 
4.	cart.robot 
5.	checkout.robot 
6.	homepage.robot 
7.	useraccount.robot 
amazon.robot
A resource file with reusable keywords and variables which they utilize keywords from all the resource located in Resource\PO
common.robot
A resource file with reusable keywords and variables which is common for all tests 
amazon_datareader.robot
A resource file with reusable keywords for data driven tests.

Execution:
A precondition for running the tests is having Robot Framework and SeleniumLibrary installed, and they in turn require Python. 
Tests (or tasks) are executed from the command line using the robot command and the results has been redirected to results directory.
robot –d results Tests
Run robot --help  for more information about the command line usage. For a complete reference manual see Robot Framework User Guide.

After running tests you will get report and log in HTML format and also will get screen shots for failed tests. Can also generate the debug logs:


