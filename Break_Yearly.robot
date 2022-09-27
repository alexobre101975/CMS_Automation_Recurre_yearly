*** Settings ***
Documentation       CMS-Engage360 Community Waterford

Library    SeleniumLibrary

Suite Setup        web setup
Suite Teardown    Close All Browsers

Resource    Resources/Variables.resource
Resource    Resources/Keywords.resource

*** Test Cases ***

PR01 Automation to enter Community Waterford Recurrence Yearly (Breakfast)
        [Tags]      Validation Test       Case 1

# Open Community Waterford Engage360
        Click Element    ${Community}
        Drag And Drop    ${Waterford}      ${Community}
        Click Element    ${Waterford}

#  Enter Dinning Window used JavaScript
        execute javascript          ${Dinning}

# Click Community Waterford
        scroll element into view            ${Community}
        element should be visible           ${Community}     Waterford Community
        mouse over                          ${Community}

# Click Add Menu Item used JavaScript
        execute javascript             ${Add Menu Item}




# complete General Info correctly

# Title
        input text          ${dining_title}        Chicken Fried

# Description
        input text          ${dining_description}       french fries, tomato sauce and breaded chicken

# Image
        input text        ${image}        Chicken Fried

# click Magnifier search
        click element         ${Search}

# Search Image
        scroll element into view              id=image_246180
        click element                         id=image_246180

# Click DONE
        click element       ${DONE}

# visible the Image
        Execute Javascript              window.scrollTo(0,document.body.scrollHeight)






# complete Identifiers correctly
        scroll element into view            ${tags}

# Text tags
        input text     ${tags}       Crunch
        press keys     ${tags}       ENTER
        input text     ${tags}       Delicious
        press keys     ${tags}       ENTER


# Meal Category
# Breakfast
        wait until element is visible       ${Breakfast}
        click element   ${Lunch}
        click element   ${Dinner}
        click element   ${Breakfast}

# Select Button Hide On Print
        select checkbox     ${Hide_Print}
        unselect checkbox   ${Hide_Print}





# complete Recurrences correctly

 # enter Star Date Calendar
        click element         ${Start-Date}

# Enter Botton Calendar
        click element        ${Calendar_Btn}

# Click advance two month next
        Double click element       ${advance_month}

# Back one month
        click element       ${back_month}

#Click in current Day
        execute javascript      ${oct31}

# Visible Tab Repets "Recurrence Yealy" and Enter
    click element         ${Tab_Repeats}
    click element         ${Recurre_Yearly}

# Modify Monthly
    click element       ${Modify_Month}
    click element        ${Month_November}

 # select Icon on Day
    click element       ${Simbol_on_day}

# Modify Every Months (increase number of Months)
  double click element                ${modify_day}
  choose file                         ${modify_day}           3
# Increase Occurrences
   double click element            ${modify_Occurrences}
   choose file                     ${modify_Occurrences}      3
#  Save Recurrence
   scroll element into view    ${SaveRecurrence}
   click element               ${SaveRecurrence}

#  Save Dinning
   scroll element into view    ${Save_btn}
   element text should be      ${Save_btn}     Save
   click element               ${Save_btn}
   click element               ${Save_btn}


# Make the Alert message "This meal has been added succesfully" visible
   wait until element is visible        ${Message_Accept}
   element should be visible            ${Message_Accept}          This meal has been added succesfully

# reload the page to avoid waiting
    reload page

## Button select All
    scroll element into view                ${Button_SelectAll}
    wait until element is visible           ${Button_SelectAll}
    set focus to element                    ${Button_SelectAll}
    mouse down                              ${Button_SelectAll}
#    sleep       1
# select and unselect button Select All
   double click element                    ${Button_SelectAll}
#
# simulate click and image Title
    wait until element is visible        ${Text_Image}
    mouse over                           ${Text_Image}
    sleep       1
#  click  Icon Item Menu
    execute javascript      ${Icon_Item_Menu}
    sleep           1
# click icon Meal
    execute javascript     ${icon_Meal}
    sleep   1
# click icon Date Served
    execute javascript      ${icon_Date_Served}

# click Tab Dining Location
    click element                      ${Dining_Location}

# click Tab menu Items
    click element               ${Menu_Items}

# click Button select All
    scroll element into view                 ${Button_SelectAll}
    wait until element is visible            ${Button_SelectAll}
    click element                            ${Button_SelectAll}

# Delete Menu Items
    scroll element into view            ${Delete_Multiple_Items}
    click element       ${Delete_Multiple_Items}

# Are you sure you want to delete the following menu items?
    scroll element into view            ${Delete_Menu_Items}
    click element      ${Delete_Menu_Items}
