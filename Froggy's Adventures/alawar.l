
time1 = 0
time2 = 2000
time3 = 1000
time4 = 3000
time5 = 2000
time6 = 2000
time7 = 2000


function init()



--   static_text("Published by",0,0,14,"alaw1",0.75,0.75)
--   static_text("Baldcoin Entertainment, Inc.",0,0,-14,"alaw2",0.75,0.75)

   add_control("alawl","intro_image",0,0)  

   add_control("alaw1","intro_text",0,20)
   set_ctrl_prop("alaw1",50,"Published by")

   add_control("alaw2","intro_text",0,-20)
   set_ctrl_prop("alaw2",50,"Baldcoin Entertainment, Inc.")


   set_ctrl_prop("alawl",1,"logo_l1")
   set_ctrl_prop("alawl",2,"logo_l1_a")



                    
   add_control("buttl","intro_image",0,0)

   set_ctrl_prop("buttl",1,"logo_l2")
   set_ctrl_prop("buttl",2,"logo_l2_a")


   add_control("butt1","intro_text",0,15)
   set_ctrl_prop("butt1",50,"In association with")

   add_control("butt2","intro_text",0,-15)
   set_ctrl_prop("butt2",50,"Dick Dastardly Productions")



end

function show_stage1()
  set_script_timer("show_stage2()\n",time2)
   set_ctrl_prop("alawl",1000,"")
end

function show_stage2()
  set_script_timer("show_stage3()\n",time3)
   set_ctrl_prop("alaw1",1000,"")
   set_ctrl_prop("alaw2",1000,"")
end

function show_stage3()
  set_script_timer("show_stage4()\n",time4)

   set_ctrl_prop("alawl",1001,"")
   set_ctrl_prop("alaw1",1001,"")
   set_ctrl_prop("alaw2",1001,"")

end

function show_stage4()
  set_script_timer("show_stage5()\n",time5)
   set_ctrl_prop("buttl",1000,"")
end

function show_stage5()
  set_script_timer("show_stage6()\n",time6)
   set_ctrl_prop("butt1",1000,"")
   set_ctrl_prop("butt2",1000,"")

end


function show_stage6()
   set_ctrl_prop("buttl",1001,"")
   set_ctrl_prop("butt1",1001,"")
   set_ctrl_prop("butt2",1001,"")
end


function activate()

  set_script_timer("set_curr_menu(\"MainMenu\")\n set_ctrl_prop(\"root\",200,0)\n",time1+time2+time3+time4+time5+time6+time7)

  set_script_timer("set_ctrl_prop(\"t1\",801)\n set_ctrl_prop(\"t2\",801)\nset_ctrl_prop(\"this\",2000)\n",1)

  set_script_timer("show_stage1()\n",time1)

  send_menu_message("Alawarlogo",4001)

  set_ctrl_prop("this",2000)
  
end

function deactivate()  
end


function timer()
  send_menu_message("Alawarlogo",4001)
end


function mouse_click()
  set_curr_menu("MainMenu")
  set_ctrl_prop("root",200,0)
end

function key_click( key )
  set_curr_menu("MainMenu")
  set_ctrl_prop("root",200,0)
end
