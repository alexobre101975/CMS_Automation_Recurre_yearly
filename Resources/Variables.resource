*** Variables ***
${browser}       chrome
${website}       http://dev.www.engage360.evacompute.com:8080/
${Email}                    superUser
${Password}                 SuperAdmin1@
${Community}                SuperUserCombo
${Waterford}                SuperUserCombo-option-30
${Dinning}                  document.getElementById('SideNav_Menu_Dinning').click()
${Add Menu Item}            document.getElementById('dining_new_dining_btn').click()
${dining_title}             id=add_dining_title
${dining_description}       id=add_dining_description
${image}                    name=image_url
${Search}                   id=dining_search_icon
${DONE}                     id=done_btn
${tags}                     id=add_dining_tags
${Hide_Print}               id=dining_hideOnPrinting_switch
${Breakfast}                id=icon_6155b016d8ca9945efb2e722
${Lunch}                    id=icon_6155b016d8ca9945efb2e723
${Dinner}                   id=icon_6155b016d8ca9945efb2e724
${Start-Date}               id=add_dining_start_date
${Calendar_Btn}             id=Calendar_Btn_StartDate_add_dining_start_date
${advance_month}            id=calendarHeader_rightArrow
${back_month}               id=calendarHeader_leftArrow
${oct31}                    document.getElementsByClassName('MuiButtonBase-root MuiIconButton-root MuiPickersDay-day')[35].click()
${Tab_Repeats}              id=RepeatValue
${Recurre_Yearly}           id=RepeatValue-option-4
${Modify_Month}             id=MonthValue
${Month_November}           MonthValue-option-10
${Simbol_on_day}             name=radio-btn_onD
${modify_day}               id=RepeatInterval
${modify_Occurrences}       id=OccurrencesField
${SaveRecurrence}           id=saveRecurrenceObj
${Save_btn}                 id=add_dining_save_btn
${Message_Accept}           id=alert_AddDining_Success
${Icon_Filter}               //body/div[@id='DiningsFilterPopOver']/div[3]/div[1]/form[1]/div[1]/button[1]
${oct25}                    document.getElementsByClassName('MuiButtonBase-root MuiIconButton-root MuiPickersDay-day')[30].click()
${Month_December}           MonthValue-option-11
${Simbol_on_day2}            name=radio-btn_onT
${PositionSelect}            id=OrdinalPositionSelect
${Select_Fourth}             OrdinalPositionSelect-option-3
${Date_Select}               id=MonthlyWeekDatSelect
${Select_Wednesday}          MonthlyWeekDatSelect-option-3
${Button_SelectAll}         id=addEditDevice_Headers_SelectAll
${Text_Image}               id=id_dining_header_list_image
${Icon_Item_Menu}           document.getElementsByClassName('MuiButtonBase-root MuiIconButton-root')[4].click()
${icon_Date_Served}         document.getElementsByClassName('MuiButtonBase-root MuiIconButton-root')[6].click()
${icon_Meal}                document.getElementsByClassName('MuiButtonBase-root MuiIconButton-root')[5].click()
${Dining_Location}          //span[contains(text(),'Dining Locations (1)')]
${Menu_Items}               id=boards-tab-0
${Giant-Hot-dog}            //div[contains(text(),'Giant Hot-dog')]
${Apply_Occurrences}        id=Apply_this_occurrence_btn
${Nov01}                    document.getElementsByClassName('MuiButtonBase-root MuiIconButton-root MuiPickersDay-day')[02].click()
${Yes, Delete}              id=delete_multiple_dinings
${No,Cancel}                //div[contains(text(),'No, Cancel')]
${Barbecue}                 //div[contains(text(),'Barbecue')]
${Search_Button}            id=search_btn
${Tab_Search}               id=dining_search
${Clear_Search}             id=dinings_clear_btn
${Filter_Icon}              id=filters_btn
${Calendar_Filter}          document.getElementsByClassName('MuiButtonBase-root MuiIconButton-root mui-icon-btn-root')[0].click()
${Next_Month}               document.getElementsByClassName('MuiButtonBase-root MuiIconButton-root MuiPickersCalendarHeader-iconButton')[1].click()
${Return_Month}             document.getElementsByClassName('MuiButtonBase-root MuiIconButton-root MuiPickersCalendarHeader-iconButton')[0].click()
${Current day}              document.getElementsByClassName('MuiButtonBase-root MuiIconButton-root MuiPickersDay-day MuiPickersDay-current MuiPickersDay-daySelected')[0].click()
${Apply_Current_Filters}    document.getElementsByClassName('MuiButtonBase-root MuiButton-root MuiButton-text filters_btn')[0].click()
${Chicken-Fried}            //div[contains(text(),'Chicken Fried')]
${Log_Print}                id=dining_print_icon
${Delete_Multiple_Items}    id=delete_multiple_dinings
${Delete_Menu_Items}        //div[contains(text(),'Yes, Delete')]
${Month_January}            MonthValue-option-0
${Clear_All}                //span[contains(text(),'Clear All')]

































${Button No,Exit}           id=close_repair_return_btn
${Menu Item}                id=menu_item_deletetion_modal
${Icon_Meal}                id=id_dining_header_list_meal
${Date_Served}              id=id_dining_header_list_date_serve
${Delete_Occurrence}        id=close_repair_close_btn
${Date Served}              id=id_dining_header_list_date_serve
${right_arrow}              id=scheduler_right_arrow
${left_arrow}               id=scheduler_left_arrow
${Print_Close}               //div[contains(text(),'X')]
${French}                    id=full-width-dining-tab-1
${Spanish}                   id=full-width-dining-tab-1
${Lenguage_OK}               //div[contains(text(),'Ok')]
${Simbol_on_day}             name=radio-btn_onD
${Simbol_on_day2}            name=radio-btn_onT
${PositionSelect}            id=OrdinalPositionSelect
${Select_Fourth}             OrdinalPositionSelect-option-3
${Date_Select}               id=MonthlyWeekDatSelect
${Select_Saturday}           MonthlyWeekDatSelect-option-6
${Month_Recu_Window}         //body/div[3]/div[3]/div[1]/div[2]/div[1]/div[7]/div[1]
${Month_Recu_Window1}        //div[contains(text(),'Occurs day 15 of every 3 months starting October')]
${Button_SelectAll}         id=addEditDevice_Headers_SelectAll
${Search_Button}            id=search_btn
${clear_search}             id=dinings_clear_btn
${delete_multiple}          id=delete_multiple_dinings
${Calendar_Recurrences}     id=Calendar_Btn_undefined_EndDate
${oct31}                     document.getElementsByClassName('MuiButtonBase-root MuiIconButton-root MuiPickersDay-day')[35].click()