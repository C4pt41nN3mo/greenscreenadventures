
 stageid = 0

function init()

  button_posx = 0
  button_posy = 20
  shift = -8

--  static_icon("pl8h1e","pl8h1e_a",0,0)
  static_icon("pl8h1","pl8h1_a",0,0)

  button_posy = button_posy + shift

  bottom_button_y = -27
  add_control("Close","button_b",0,bottom_button_y)
  add_control("Next","button_im",14,bottom_button_y,"button_arrowR","button_arrowR_a")
  add_control("Prew","button_im",-14,bottom_button_y,"button_arrowL","button_arrowL_a")

end

function ActivateAllStageControls()

  send_ctrs_message("text1",2030)
  send_ctrs_message("text1",2034)
  send_ctrs_message("text2",2030)
  send_ctrs_message("text2",2034)
  send_ctrs_message("text3",2030)
  send_ctrs_message("text3",2034)
  send_ctrs_message("text4",2030)
  send_ctrs_message("text4",2034)
  send_ctrs_message("text5",2030)
  send_ctrs_message("text5",2034)
  send_ctrs_message("text6",2030)
  send_ctrs_message("text6",2034)
  send_ctrs_message("text7",2030)
  send_ctrs_message("text7",2034)


  send_ctrs_message("icon1",2030)
  send_ctrs_message("icon1",2034)
  send_ctrs_message("icon2",2030)
  send_ctrs_message("icon2",2034)
  send_ctrs_message("icon3",2030)
  send_ctrs_message("icon3",2034)
  send_ctrs_message("icon4",2030)
  send_ctrs_message("icon4",2034)
  send_ctrs_message("icon5",2030)
  send_ctrs_message("icon5",2034)
  send_ctrs_message("icon6",2030)
  send_ctrs_message("icon6",2034)
  send_ctrs_message("icon7",2030)
  send_ctrs_message("icon7",2034)

end




function DeleteAllStageControls()

  delete_control("text1")
  delete_control("text2")
  delete_control("text3")
  delete_control("text4")
  delete_control("text5")
  delete_control("text6")
  delete_control("text7")

  delete_control("icon1")
  delete_control("icon2")
  delete_control("icon3")
  delete_control("icon4")
  delete_control("icon5")
  delete_control("icon6")
  delete_control("icon7")
end





function activate()
stageid = 0
Next()
end

function deactivate()
end


function Close()
set_curr_menu("MainMenu")
end 


function Next()
  stageid = stageid+1
  if stageid == 9 then
    stageid = 8
    disable_control("Next")
    return
    end

  if stageid == 1 then stage1() end
  if stageid == 2 then stage2() end
  if stageid == 3 then stage3() end
  if stageid == 4 then stage4() end
  if stageid == 5 then stage5() end
  if stageid == 6 then stage6() end
  if stageid == 7 then stage7() end
  if stageid == 8 then stage8() end

  enable_control("Next")
  enable_control("Prew")

end


function Prew()
  stageid = stageid-1

  if stageid == 0 then
     stageid = 1
     disable_control("Prew")
     return
     end

  if stageid == 1 then  stage1() end
  if stageid == 2 then stage2() end
  if stageid == 3 then stage3() end
  if stageid == 4 then stage4() end
  if stageid == 5 then stage5() end
  if stageid == 6 then stage6() end
  if stageid == 7 then stage7() end
  if stageid == 8 then stage8() end


  enable_control("Prew")
  enable_control("Next")

end





function stage1()

  DeleteAllStageControls()   

  text = [[    Вы управляете лягушонком по имени
 Фрогги. Ваша задача спасти ромашки,
 грибки, камушки, и кристаллы от
 разрушения монстрами. На пути
 Фрогги будут встречатся много
 разных монстров. Огромные, сердитые
 пни Боссы будут старатся убить
 маленькую лягушку.
     Но Фрогги не должен падать духом,
 и умело обхитрив монстров - спасти
 растительность волшебного леса от
 невежественых хулиганов.]]


  text = [[    Help Froggy collect all of the
 flowers, mushrooms, pebbles and
 crystals on each level while
 avoiding the dangerous monsters
 invading the magical forest.
 During his journey, Froggy will 
 face many different enemies and
 fight enormous bosses that look
 like angry tree stumps.  He must
 be courageous, though, and protect
 the enchanted woodland from the
 dreadful creatures.]]

  tittle = [[Help]]

  bottom_button_y = -33

  static_text(tittle,4,0,26,"text1")
  static_text(text,0,0,32,"text2")
--  static_text(text2,0,5,20,"text3")
--  static_text("Page 1 of 5",0,0,-19,"text4",1,1)
  static_text("Page 1 of 6",0,0,20,"text4")

  ActivateAllStageControls()
  stageid = 1
  
end


function stage2()

  DeleteAllStageControls()

  tittle = [[Controls]]

  sh = 0

  text_posx = 5
  images_posx = -23
  text1_pos = 18 + sh
  text2_pos = 3 + sh
  text3_pos = -10 + sh

  left_right = [[-для перемещения влево и
 вправо используйте стрелки
 на клавиатуре.]] 

  left_right = [[ To move to the right or
 to the left, use the Right
 and Left arrows.]] 


  jump = [[-для того чтобы подпрыгнуть
 нажмите стрелку ВВЕРХ.]]

  jump = [[ To jump, press the Up arrow.]]


  attack = [[-чтобы кинуть пузырь нажмите
 левый "пробел".]]


  attack = [[To throw a bubble, press
 Space.]]


  static_text(left_right,0,text_posx-2,text1_pos,"text1")
  static_text(jump,0,text_posx-2,text2_pos,"text2")
  static_text(attack,0,text_posx-1,text3_pos,"text3")

  static_text(tittle,4,0,26,"text4")

  static_text("Page 2 of 6",0,0,20,"text5")

  static_icon("MN_T4","MN_T1A",images_posx,text1_pos-3,"icon1")
  static_icon("MN_T2","MN_T1A",images_posx+5,text1_pos-3,"icon2")

  static_icon("MN_T1","MN_T1A",images_posx+2.5,text2_pos-2,"icon3")
--  static_icon("MN_T5","MN_T5A",images_posx+2.5,text3_pos-2,"icon4")
  static_icon("MN_T6","MN_T6A",images_posx+3.5,text3_pos-5,"icon5")

  ActivateAllStageControls()

  stageid = 2

end


function timer()

end




function stage3()

  DeleteAllStageControls()

  stageid = 3

  tittle = [[Bonuses]]

  text_posx = 5
  images_posx = -23


  A = 9
  text1_pos = 16
  text2_pos = text1_pos-A*1
  text3_pos = text1_pos-A*2
  text4_pos = text1_pos-A*3
  text5_pos = text1_pos-A*4


  text1 = [[- Monster freezer. This bonus
 freezes all of the monsters for
 a short period of time.]] 

  text2 = [[- Speed-up. This bonus
 increases Froggy's speed.]] 

  text3 = [[- Life+1. This bonus gives
 Froggy one more life.]] 

  text4 = [[- Monster cleaner. This
 bonus makes all of the monsters
 disappear.]]


  button = "OK"

  static_text(text1,0,text_posx,text1_pos+2,"text1")
  static_text(text2,0,text_posx-6,text2_pos,"text2")
  static_text(text3,0,text_posx-4,text3_pos+1,"text3")
  static_text(text4,0,text_posx+0.5,text4_pos+3,"text4")

  static_text(tittle,4,0,26,"text6")

  static_text("Page 3 of 8",0,0,20,"text7")

  anim_icon("freeze_bon",images_posx,text1_pos,"idle",1,1,"icon1")
  anim_icon("accel_bon",images_posx,text2_pos,"idle",1,1,"icon2")
  anim_icon("bon_heart",images_posx,text3_pos,"idle",1,1,"icon3")
  anim_icon("clean_bon",images_posx,text4_pos,"idle",1,1,"icon4")

  ActivateAllStageControls()
  stageid = 3

end


function stage4()

  DeleteAllStageControls()

  tittle = [[Bonuses]]
  static_text(tittle,4,0,26,"text6")

  text_posx = 2
  images_posx = -23

  A = 8
  text1_pos = 15
  text2_pos = text1_pos-A*1
  text3_pos = text1_pos-A*2
  text4_pos = text1_pos-A*3
  text5_pos = text1_pos-A*4


  text1 = [[- Thunderstorm. Lightning bolts
 will strike the monsters on its way.]] 


  text2 = [[- A rocket is an effective weapon
 to fight with monsters. To
 launch it, you should pick it
 up and the rocket will hit the
 target automatically.]] 

  


  button = "OK"

  static_text(text1,0,text_posx,text1_pos+2,"text1")
  static_text(text2,0,text_posx+1,text2_pos+A-2,"text2")

  static_text("Page 4 of 8",0,0,20,"text7")
  anim_icon("bon_rain",images_posx,text1_pos,"idle",1,1,"icon1")
  anim_icon("rpg_bonus",images_posx,text2_pos,"idle",1,1,"icon2")

  ActivateAllStageControls()

  stageid = 4

end


function stage5()

  DeleteAllStageControls()

  tittle = [[Score Points]]

  A = 8

  text_posx = -7
  images_posx = -23
  text1_pos = 16
  text2_pos = text1_pos-A*1
  text3_pos = text1_pos-A*2
  text4_pos = text1_pos-A*3
  text5_pos = text1_pos-A*4


  text1 = [[-1000 score points.]] 

  text2 = [[-500 score points.]] 

  text3 = [[-100 score points.]] 

  text4 = [[-300 score points.]] 

  text5 = [[-400 score points.]] 

  button = "OK"

  static_text(tittle,4,0,26,"text1")
  static_text(text1,0,text_posx+3,text1_pos-1,"text2")
  static_text(text2,0,text_posx+1,text2_pos,"text3")
  static_text(text3,0,text_posx+1,text3_pos,"text4")
  static_text(text4,0,text_posx+1,text4_pos,"text5")
  static_text(text5,0,text_posx+1,text5_pos,"text6")
  static_text("Page 5 of 8",0,0,20,"text7")

  anim_icon("sweet2",images_posx,text1_pos,"idle",1,1,"icon1")
  anim_icon("sweet",images_posx,text2_pos,"idle",1,1,"icon2")
  anim_icon("score_bon1",images_posx,text3_pos,"idle",1,1,"icon3")
  anim_icon("score_bon2",images_posx,text4_pos,"idle",1,1,"icon4")
  anim_icon("score_bon3",images_posx,text5_pos,"idle",1,1,"icon5")

  ActivateAllStageControls()
  stageid = 5

end

function stage6()

  DeleteAllStageControls()

  tittle = [[Monsters]]

  A = 9
  text_posx = 0
  images_posx = -23
  text1_pos = 16
  text2_pos = text1_pos-A*1
  text3_pos = text1_pos-A*2
  text4_pos = text1_pos-A*3
  text5_pos = text1_pos-A*4

  text1 = [[-Green monsters, who eat
 the vegetation of the woodland,
 are quick runners!]] 

  text2 = [[-Thorny monsters can roll on
 Froggy. It would be better to 
 keep away from them. ]]

  text3 = [[-Brown monsters can spit bombs!
 Be careful!]]

  text4 = [[-Coal monsters can't be enclosed
 in bubbles to trap them. They can't
 jump from platform to platform..]]

  text5 = [[-Armored monsters can roll on
 Froggy and jump off the platforms.]] 




  static_text(tittle,4,0,26,"text1")
  static_text(text1,0,text_posx+1,text1_pos+3,"text2")
  static_text(text2,0,text_posx+0.6,text2_pos+2,"text3")
  static_text(text3,0,text_posx+1,text3_pos,"text4")
  static_text(text4,0,text_posx+4,text4_pos+2.5,"text5")
--  static_text(text5,0,text_posx-0.1,text5_pos,"text6")
  static_text("Page 6 of 8",0,0,20,"text7")

  anim = "help"


  static_icon("hlp_m1","hlp_m1_a",images_posx,text1_pos,"icon1")
  static_icon("hlp_m3","hlp_m3_a",images_posx,text2_pos,"icon2")

  static_icon("hlp_m2","hlp_m2_a",images_posx,text3_pos,"icon3")
  static_icon("hlp_m4","hlp_m4_a",images_posx,text4_pos,"icon4")
--  static_icon("hlp_m5","hlp_m5_a",images_posx,text5_pos,"icon5")

  ActivateAllStageControls()
  stageid = 6

end


function stage7()

  DeleteAllStageControls()

  tittle = [[Monsters]]

  A = 8.5
  text_posx = 0
  images_posx = -23
  text1_pos = 16
  text2_pos = text1_pos-A*1
  text3_pos = text1_pos-A*2
  text4_pos = text1_pos-A*3
  text5_pos = text1_pos-A*4

  text1 = [[-Armored monsters can roll on
 Froggy and jump off the platforms.]] 




  static_text(tittle,4,0,26,"text1")
  static_text(text1,0,text_posx+1,text1_pos,"text2")
  static_text("Page 7 of 8",0,0,20,"text7")

  anim = "help"


  static_icon("hlp_m5","hlp_m5_a",images_posx,text1_pos,"icon1")

  ActivateAllStageControls()
  stageid = 7

end


function stage8()

  DeleteAllStageControls()

  tittle = [[Credits]]

  A = 4
  text_posx = 0
  images_posx = -23
  text1_pos = 2
  text2_pos = text1_pos-A*1
  text3_pos = text1_pos-A*2
  text4_pos = text1_pos-A*3
  text5_pos = text1_pos-A*4
  text6_pos = text1_pos-A*5

  text1 = [[Developer: Butterfly iSoft Team]] 
  text2 = [[Published by Alawar Entertainment]] 
  text3 = [[Arts and Graphics: Sergey Korytcev]]
  text4 = [[Level Design: Vladimir Karlugin.]]
  text5 = [[Mousic and Sound: Konstantin Elgazin]]
  text6 = [[Programming: Dmitry Danchenko.]] 


  static_text(tittle,4,0,26,"text1")
  static_text(text1,0,text_posx,text1_pos,"text2")
  static_text(text2,0,text_posx,text2_pos,"text3")
  static_text(text3,0,text_posx,text3_pos,"text4")
  static_text(text4,0,text_posx,text4_pos,"text5")
  static_text(text5,0,text_posx,text5_pos,"text6")
  static_text(text6,0,text_posx,text6_pos,"text7")
  static_text("Page 8 of 8",0,0,20,"text7")

  static_icon("logo_n5b","logo_n5b_a",10,14,"icon1")
  static_icon("al2","al2_a",-10,14,"icon2")

  ActivateAllStageControls()
  stageid = 8

end

