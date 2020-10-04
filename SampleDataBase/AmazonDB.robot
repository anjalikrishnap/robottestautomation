*** Settings ***
Library     DatabaseLibrary
Library    OperatingSystem
Suite Setup    Connect To DB    ${con}
Suite Teardown  disconnect from database
*** Variables ***

${con}    'system/Anjalikrishna1@(DESCRIPTION =(ADDRESS_LIST =(ADDRESS = (PROTOCOL = IPC)(KEY = EXTPROC1521)))(CONNECT_DATA =(SID = orcl)(PRESENTATION = RO)))'

*** Test Cases ***
Test case Validate email
    [Tags]    email validation
    [Documentation]    To validate email address field in customer table
    ${data}=    row count is 0    select * from AMAZON_CUSTOMERS where EMAIL not like '__%@__%.__%'
Test case Validate order for invalid customer
    [Tags]    validate order
    [Documentation]    To validate order table does not contain invalid orders from not registerd customer for non existing product.
    ${data}=    row count is 0    select * from amazon_order where PRODID not in (select prodid from product)

Test case Validate order for invalid product
    [Tags]    validate order
    [Documentation]    To validate order table does not contain invalid orders  for non existing product.
    ${data}=    row count is 0    select * from amazon_order where customer_id not in (select customer_id from amazon_customers)
*** Keywords ***
Connect To DB
    [Arguments]    ${DB_CONNECT_STRING_VALUE}
    Set Global Variable    ${DB_CONNECT_STRING_VALUE}
    #Connect to DB
    connect to database using custom params    cx_Oracle    ${DB_CONNECT_STRING_VALUE}

Run Query and log results
    set log level    Debug
    [Arguments]    ${QUERY_TO_EXECUTE}
    Set Global Variable    ${QUERY_TO_EXECUTE}
    ${queryResults}    Query    ${QUERY_TO_EXECUTE}
    log to console    ${queryResults}


Disconnect From DB
    #Disconnect from DB

