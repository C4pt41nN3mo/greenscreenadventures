
function init()

  set_collected_item("camom","I_m8b")

  precashe_anim_pack("boss1")
  precashe_anim_pack("rpg")

  add_rockets() 

end

function timer()
  if get_obj_count("rpg_bonus") == 0 then add_rockets() end
end


function boss_killed()
set_script_timer("add_obj_on_parachute(50,104,\"prize\")\n",5000)
end


function add_rockets()

  add_obj_on_parachute(rnd(0,100),100,"rpg_bonus")

end
