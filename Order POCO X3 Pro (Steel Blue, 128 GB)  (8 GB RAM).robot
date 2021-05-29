*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://www.flipkart.com/

*** Test Cases ***
Login Fipkart
    Open Browser    https://www.flipkart.com/    chrome
    Input Text    xpath://body/div[2]/div[1]/div[1]/div[1]/div[1]/div[2]/div[1]/form[1]/div[1]/input[1]     8401608858
    input text    xpath://input[@type="password"]     Tommy@88552233
    click element    //button[@type="submit" and @class="_2KpZ6l _2HKlqd _3AWRsL"]
    maximize browser window
    Sleep    4s    
    input text      xpath://input[@type="text"]          POCO X3 Pro
    Sleep    4s    
    Click Element    xpath://button[@type="submit" and @class="L0Z3Pu"]
    Sleep    5s    
    Wait Until Element Is Visible    //*[@id="container"]/div/div[3]/div/div[1]/div[2]/div[1]/div/section[2]/div[4]/div[1]/select/option[8]    
    Click Element    //*[@id="container"]/div/div[3]/div/div[1]/div[2]/div[1]/div/section[2]/div[4]/div[1]/select/option[8]
    Sleep    5s
    Wait Until Element Is Visible    //*[@id="container"]/div/div[3]/div/div[1]/div[2]/div[1]/div/section[2]/div[4]/div[3]/select/option[1]    
    Click Element    //*[@id="container"]/div/div[3]/div/div[1]/div[2]/div[1]/div/section[2]/div[4]/div[3]/select/option[1]    
    Sleep    5s
    @{parent_window}=   get window handles
    wait until element is visible    xpath://*[@id="container"]/div/div[3]/div/div[2]/div[3]/div/div/div/a/div[2]/div[1]/div[1]   25s
    run keyword and ignore error    click element    xpath://*[@id="container"]/div/div[3]/div/div[2]/div[3]/div/div/div/a/div[2]/div[1]/div[1]
    @{child_window}=   get window handles
    switch window    NEW
    ${title}=   get title
    log to console    ${title}
    Sleep    5s   
    Wait Until Element Is Visible    //button[@class="_2KpZ6l _2U9uOA _3v1-ww"]    
    Click Element    //button[@class="_2KpZ6l _2U9uOA _3v1-ww"]
    Sleep    5s       
    Close Browser