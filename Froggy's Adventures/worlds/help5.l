
function init()

  set_collected_item("camom","I_m8b")

--  set_script_timer("add_monster1(10,30,\"boss1\")",7000)
--  set_script_timer("add_monster1(70,20,\"belly\")",7000)

  precashe_anim_pack("boss1")
--  add_monster1(30,80,"boss1")

--  set_script_timer("add_rockets()\n",5000)
  add_rockets() 

end

function timer()
  if get_obj_count("rpg_bonus") == 0 then add_rockets() end
end


function add_rockets()

  add_obj_on_parachute(rnd(0,100),100,"rpg_bonus")

--  set_script_timer("add_rockets()\n",1000)

end
