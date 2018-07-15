minetest.register_chatcommand("armor", {
    description = "Open Armor Formspec.",
    func = function(name, param)
        minetest.show_formspec(name, "armorform",
        "size[8,5]" ..
        "bgcolor[#080808BB;true]" ..
        "background[5,5;1,1;gui_formbg.png;true]" ..
        "listcolors[#00000069;#5A5A5A;#141318;#30434C;#FFF]" ..
        "list[detached:".. name .."_armor;armor;1.5,0;5,1;]" ..
        "list[current_player;main;0,1.2;8,1;]" ..
        "list[current_player;main;0,2.35;8,3;8]" ..
        "listring[current_player;main]" ..
        "listring[detached:".. name .."_armor;armor]")
end,
})
