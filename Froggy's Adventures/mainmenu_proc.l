
function init()

  button_posx = 0
  button_posy = 7
  shift = -11


  add_control("pl_acc","player_list",0,400)
  player_name = get_control_prop_string("pl_acc",312)
  player_text = string.format("Welcome %s!",player_name)
  static_text(player_text,1,0,21,"Player",0.75,0.75)
  

--  static_icon("g1sm","g1sm_a",-41,38)
--  static_icon("logo1s","logo1s_a",42,39)

  add_control("Change_Player","button4",0,17)  
  set_ctrl_prop("Change_Player",50,"Change Player")

--  static_icon("i_m1","i_m1_a",0,0)
  static_icon("dfa_5","dfa_5_a",1.5,38.2)

  add_control("Play","button5",button_posx,button_posy)  
  button_posy = button_posy + shift

  add_control("Options","button5",button_posx,button_posy)  
  button_posy = button_posy + shift

--  add_control("Credits","button5",button_posx,button_posy)  
--  button_posy = button_posy + shift

  add_control("Score","button5",button_posx,button_posy)  
  button_posy = button_posy + shift

  add_control("Help","button5",button_posx,button_posy)  
  button_posy = button_posy + shift

  add_control("Quit","button5",button_posx,button_posy)  

  button_posy = button_posy + shift

  add_control("PLayerList","player_list",0,-200)

--  add_control("Test","button",button_posx,button_posy)  

-- устанавливаем триальный текст .

  if is_game_registered()==0 then  
      text = string.format("Unregistered Version. Demo time left:%d min.",get_trial_time() )  
      static_text(text,0,0,48,"trial")
   end
--  else
--      text = string.format("registered to %s",get_reg_user_name() )
--  end

end

function activate()

  if is_game_registered()==0 then  
      text = string.format("Unregistered Version. Demo time left:%s min",get_trial_time() )  
  else
      text = string.format("registered to %s:",get_reg_user_name()) end

  set_ctrl_prop("trial",50,text)

  set_script_timer("timer()\n",100)

  UpdatePlayerName()
  
end


function Play()
--function ═ютр _╚уЁр()

set_curr_menu("NewGame_1pl")
end

function Options()
-- function ╬яЎшш()
set_curr_menu("Options")
end

function Credits()
-- function └тЄюЁ√()
set_curr_menu("Credits")

-- dialog_box("next_lev","next_level.l")

end

-- function ┬√їюф()
function Quit()
dialog_box("Quit?","quit.l")
end

function Help()
set_curr_menu("Help")
end

function Score()
set_curr_menu("Score_easy")
end


function Test()
set_curr_menu("Test")
--dialog_box("Test","trial2.l")
--dialog_box("Test","trial3.l")
end


function Change_Player()
set_curr_menu("ChangePlayer")
end

function timer()
  Check()
end

function UpdatePlayerName()
  player_name = get_control_prop_string("pl_acc",312)
  player_text = string.format("Welcome %s!",player_name)
  set_ctrl_prop("Player",50,player_text)
end


is_checked = 0
function Check()

  if is_checked == 1 then return end
  if get_control_prop_number("PLayerList",307) == 0 then
     dialog_box("CreatePl","first_player.l")
     set_script_timer("UpdatePlayerName()\n",10000)
     end

  is_checked = 1
  
end

