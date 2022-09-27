*** Settings ***
Documentation       CMS-Engage360 Community Waterford

Library    SeleniumLibrary

Suite Setup        web setup
#Suite Teardown    Close All Browsers

Resource    Resources/Variables.resource
Resource    Resources/Keywords.resource

*** Test Cases ***

PR03 Automation to enter Community Waterford Recurrence Yearly (Dinner)
        [Tags]      Validation Test       Case 3

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
        input text          ${dining_title}         Barbecue

# Description
        input text          ${dining_description}    Sausage spicy and Soft

# Image
        input text        ${image}        Barbecue

# click Magnifier search
        click element         ${Search}

# Search Image
        scroll element into view              id=image_3524649
        click element                         id=image_3524649


# Click DONE
        click element       ${DONE}

# visible the Image
        Execute Javascript              window.scrollTo(0,document.body.scrollHeight)




# complete Identifiers correctly
        scroll element into view            ${tags}

# Text tags
        input text     ${tags}       Spicy and Soft
        press keys     ${tags}       ENTER


# Meal Category
# Dinner
        wait until element is visible       ${Dinner}
        click element   ${Lunch}
        click element   ${Dinner}


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
        click element       ${advance_month}

# Back one month
        click element       ${back_month}

#Click in current Day
        execute javascript      ${Nov01}

# Visible Tab Repets "Recurrence Yealy" and Enter
    click element         ${Tab_Repeats}
    click element         ${Recurre_Yearly}

# Modify Monthly
    click element       ${Modify_Month}
    click element       ${Month_January}

## Visible the window Recurrence
# select Icon on Day
    click element       ${Simbol_on_day}
# Modify Every Months (increase number of Months)
  double click element                ${modify_day}
  choose file                         ${modify_day}           10
# Increase Occurrences
   double click element            ${modify_Occurrences}
   choose file                     ${modify_Occurrences}      5

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

# Simulate Button select All
    scroll element into view                ${Button_SelectAll}
    wait until element is visible           ${Button_SelectAll}
    set focus to element                    ${Button_SelectAll}
    mouse down                              ${Button_SelectAll}

# simulate click and image Title
    wait until element is visible        ${Text_Image}
    set focus to element                 ${Text_Image}
    mouse over                           ${Text_Image}

# select button Select All
    scroll element into view                ${Button_SelectAll}
    wait until element is visible           ${Button_SelectAll}
    click element                           ${Button_SelectAll}


# Enter in the button Delete Mneu Items
    click element               ${Yes, Delete}

 # Are you sure you want to delete the following menu items?
 # click Button Cancel
    click element              ${No,Cancel}

# unselect button Select All
    scroll element into view                ${Button_SelectAll}
    wait until element is visible           ${Button_SelectAll}
    click element                           ${Button_SelectAll}

# enter the capture and modify information (description, image, and Tag)
    scroll element into view        ${Barbecue}
    click element                   ${Barbecue}


# Remove Text Description
    click element       ${dining_description}
    Press Keys          ${dining_description}      CTRL+A+DELETE

# Text Modify Description
      input text          ${dining_description}          especies, potatoes and soft meat

# Modify Image
# Image
    Press Keys        ${image}      CTRL+A+DELETE
    input text        ${image}       Barbecue

# click Magnifier search
  click element         ${Search}

# Search Image
   click element                        id=image_2169305

# Click DONE
    click element       ${DONE}

# visible Tab Tags
  Execute Javascript              window.scrollTo(document.body.scrollHeight,0)

# enter more Text (tags)
   input text        ${tags}        Exquisite Taste
   press keys        ${tags}         ENTER

#  Save Dinning
   scroll element into view    ${Save_btn}
   element text should be      ${Save_btn}     Save
   click element               ${Save_btn}
   click element               ${Save_btn}

# Confirm Menu Item Changes
# Apply to This and Future Occurrences
    click element           ${Apply_Occurrences}

# simulate click and image Title
    wait until element is visible        ${Text_Image}
    mouse over                           ${Text_Image}

#  click  Icon Item Menu
    execute javascript      ${Icon_Item_Menu}

# click icon Meal
    execute javascript     ${icon_Meal}

    sleep   1
# click icon Date Served
    execute javascript      ${icon_Date_Served}

# Enter Icon de Search
    wait until element is visible       ${Search_Button}
    set focus to element                ${Search_Button}
    click element                       ${Search_Button}


    wait until element is visible       ${Tab_Search}
    set focus to element                ${Tab_Search}
    click element                       ${Tab_Search}

# enter search text (captures)
    input text           ${Tab_Search}      Giant Hot-dog
    click element        ${Tab_Search}

    wait until element is visible   ${Clear_Search}
    set focus to element            ${Clear_Search}
    click element                   ${Clear_Search}

# Enter Icon de Search
    click element                      ${Search_Button}

    click element                       ${Tab_Search}

# enter search text (captures)
    input text          ${Tab_Search}      Chicken Fried
    click element       ${Tab_Search}

    click element                       ${Clear_Search}

# Enter Icon de Search
    click element                      ${Search_Button}

    click element                       ${Tab_Search}

# enter search text (captures)
    input text           ${Tab_Search}      Barbecue
    click element        ${Tab_Search}


    click element      ${Clear_Search}

# Enter Icon Filter
    click element       ${Filter_Icon}


# Used JavaScript

# Enter the calendar Filter
    execute javascript      ${Calendar_Filter}

# Next Month In Window FIlter
    execute javascript      ${Next_Month}

# Return Month In Window Filter
    execute javascript          ${Return_Month}

# Click in the day Window Filter
    execute javascript      ${Current day}

# Click in tab Apply Current Filters
    execute javascript          ${Apply_Current_Filters}

# Enter Icon Filter
   click element    ${Filter_Icon}



# click Tab Clear All
    wait until element is visible       ${Clear_All}
    click element          ${Clear_All}

# Click Icon close Window Filter
    click element       ${Icon_Filter}

# click Icon Print
    scroll element into view    ${Log_Print}
    click element               ${Log_Print}

# click next visible capture dining
    double click element            ${right_arrow}

# close Incon close Print
    click element           ${Print_Close}

# select button Select All
    scroll element into view                ${Button_SelectAll}
    wait until element is visible           ${Button_SelectAll}
    click element                           ${Button_SelectAll}

# Delete Menu Items
    scroll element into view            ${Delete_Multiple_Items}
    click element       ${Delete_Multiple_Items}

# Are you sure you want to delete the following menu items?
    scroll element into view            ${Delete_Menu_Items}
    click element      ${Delete_Menu_Items}


