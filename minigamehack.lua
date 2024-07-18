gtaoversion = memory.scan_pattern("8B C3 33 D2 C6 44 24 20"):add(0x24):rip()
if gtaoversion:get_string() == "3274" then
gui.get_tab("GUI_TAB_NETWORK"):add_button("Mini-game instant complete", function()

    local local_H4_hack = 24880 --3274    --func_6004(&Local_24880, &(Local_24871[func_389(bParam1, 3) /*2*/]), 0, joaat("heist"), Global_786547.f_1);

    if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat("fm_mission_controller_2020")) ~= 0 then

        locals.set_int("fm_mission_controller_2020", 29700, 6) --3274 --佩里科排水口格栅切割

        locals.set_float("fm_mission_controller_2020", 30939 + 3, 100) --3274 佩里科等离子切割

        if locals.get_int("fm_mission_controller_2020", 30914) == 3 then --佩里科密码箱 --Input_Code_Enter_Correct
            locals.set_int("fm_mission_controller_2020", 30915, 2) --3274 --已输入三组密码
            locals.set_float("fm_mission_controller_2020", 30915 + 1 + 1, locals.get_int("fm_mission_controller_2020", 30915 + 1 + 1 + 1)) --3274 --使已输入密码与目标相同
            locals.set_float("fm_mission_controller_2020", 30915 + 1 + 1 + 2, locals.get_int("fm_mission_controller_2020", 30915 + 1 + 1 + 1 + 2)) --3274 --使已输入密码与目标相同
            locals.set_float("fm_mission_controller_2020", 30915 + 1 + 1 + 4, locals.get_int("fm_mission_controller_2020", 30915 + 1 + 1 + 1 + 4)) --3274 --使已输入密码与目标相同
            PAD.SET_CONTROL_VALUE_NEXT_FRAME(2, 237, 1.0) --确认密码
        end
    
        local_H4_hack_v = locals.get_int("fm_mission_controller_2020", local_H4_hack) --佩里科finger clone
        if (local_H4_hack_v & (1 << 0)) == 0 then
            local_H4_hack_v = local_H4_hack_v ~ (1 << 0)
            locals.set_int("fm_mission_controller_2020", local_H4_hack, local_H4_hack_v)
        end
    end
            
    if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat("fm_mission_controller")) ~= 0 then --自动钻孔
        locals.set_float("fm_mission_controller", 10069 + 11, 1) --3274 全福银行钻孔
        locals.set_int("fm_mission_controller", 10109 + 2, 8) --3274 赌场金库门钻孔 DLC_HEIST3\HEIST_FINALE_LASER_DRILL case 8
    end
    --所有赌场指纹和键盘门禁
    local local_H3_hack_1 = 53019 --3274    --func_14102(&Local_52985, &(Local_52920[Local_31603[bLocal_3229 /*292*/].f_27 /*2*/]), 0, joaat("heist"), Global_786547.f_1);
    local local_H3_hack_2 = 54085 --3274    --func_14104(&Local_54047, &(Local_53982[Local_31603[bLocal_3229 /*292*/].f_27 /*2*/]), 0, joaat("heist"), Global_786547.f_1);
    local local_H3_hack_1_p = 2840 --3274    
    local local_H3_hack_2_p = 3841 --3274    

    if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat("fm_mission_controller")) ~= 0 then --赌场指纹门禁
        local_H3_hack_1_v = locals.get_int("fm_mission_controller", local_H3_hack_1)
        if (local_H3_hack_1_v & (1 << 0)) == 0 then
            local_H3_hack_1_v = local_H3_hack_1_v ~ (1 << 0)
            locals.set_int("fm_mission_controller", local_H3_hack_1, local_H3_hack_1_v)
        end
        local_H3_hack_2_v = locals.get_int("fm_mission_controller", local_H3_hack_2)
        if (local_H3_hack_2_v & (1 << 0)) == 0 then
            local_H3_hack_2_v = local_H3_hack_2_v ~ (1 << 0)
            locals.set_int("fm_mission_controller", local_H3_hack_2, local_H3_hack_2_v)
        end
    end
    if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat("am_mp_arc_cab_manager")) ~= 0 then --赌场指纹门禁-练习
        local_H3_hack_1_p_v = locals.get_int("am_mp_arc_cab_manager", local_H3_hack_1_p)
        if (local_H3_hack_1_p_v & (1 << 0)) == 0 then
            local_H3_hack_1_p_v = local_H3_hack_1_p_v ~ (1 << 0)
            locals.set_int("am_mp_arc_cab_manager", local_H3_hack_1_p, local_H3_hack_1_p_v)
        end
        local_H3_hack_2_p_v = locals.get_int("am_mp_arc_cab_manager", local_H3_hack_2_p)
        if (local_H3_hack_2_p_v & (1 << 0)) == 0 then
            local_H3_hack_2_p_v = local_H3_hack_2_p_v ~ (1 << 0)
            locals.set_int("am_mp_arc_cab_manager", local_H3_hack_2_p, local_H3_hack_2_p_v)
        end
    end

    if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat("fm_mission_controller")) ~= 0 then
        locals.set_int("fm_mission_controller", 1545, 2)  --末日一-服务器群组(Heist2-Mission1-Prep3:SERVER FARM)  GRAPHICS::DRAW_SPRITE("MPHotwire", "failed"
    end
    if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat("fm_mission_controller_2020")) ~= 0 then
        locals.set_int("fm_mission_controller_2020", 1254, 2)  --保金办公室任务 (Bottom Dollar Bail Office Mission)  GRAPHICS::DRAW_SPRITE("MPHotwire", "failed"
    end

    --所有voltlab
        --[[
        if (iLocal_765 == iLocal_764)
            {
                AUDIO::PLAY_SOUND_FRONTEND(-1, "All_Connected_Correct", uParam1->f_741, true);
            }
    ]]

    if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat("fm_mission_controller_2020")) ~= 0 then --voltlab立即完成
        locals.set_int("fm_mission_controller_2020", 1723, locals.get_int("fm_mission_controller_2020", 1724)) --3274 --voltlab实际值与目标值始终一致
        locals.set_int("fm_mission_controller_2020", 1725, 3) --3274 已连接三条线
    end
    if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat("fm_content_island_heist")) ~= 0 then
        locals.set_int("fm_content_island_heist", 766, locals.get_int("fm_content_island_heist", 767)) --3274 --voltlab实际值与目标值始终一致
        locals.set_int("fm_content_island_heist", 768, 3) --3274  已连接三条线
    end
    if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat("fm_content_vehrob_prep")) ~= 0 then
        locals.set_int("fm_content_vehrob_prep", 547, locals.get_int("fm_content_vehrob_prep", 548)) --3274 --voltlab实际值与目标值始终一致
        locals.set_int("fm_content_vehrob_prep", 549, 3) --3274  已连接三条线
    end
    if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat("am_mp_arc_cab_manager")) ~= 0 then
        locals.set_int("am_mp_arc_cab_manager", 455, locals.get_int("am_mp_arc_cab_manager", 456)) --3274 --voltlab实际值与目标值始终一致
        locals.set_int("am_mp_arc_cab_manager", 457, 3) --3274  已连接三条线
    end


    --所有收集数据包绕过防火墙破解
    if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat("fm_content_vehrob_casino_prize")) ~= 0 then
        locals.set_int("fm_content_vehrob_casino_prize", 1045 + 135 , 3) --3274 case 3 Pass_Remote
    end
    if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat("fm_mission_controller")) ~= 0 then --
        locals.set_int("fm_mission_controller", 1271 + 135 , 3) --3274 case 3 Pass_Remote
    end
    if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat("fm_mission_controller_2020")) ~= 0 then
        locals.set_int("fm_mission_controller_2020", 980 + 135 , 3) --3095 case 3 Pass_Remote
    end

    --所有贪吃蛇破解 CIRC_COMP
    if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat("fm_mission_controller")) ~= 0 then --
        locals.set_int("fm_mission_controller", 11778 + 24 , 7)
    end
    if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat("fm_mission_controller_2020")) ~= 0 then --
        locals.set_int("fm_mission_controller_2020", 9018 + 24 , 7)
    end
    if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat("fm_content_business_battles")) ~= 0 then --
        locals.set_int("fm_content_business_battles", 4101 + 24 , 7)
    end
    if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat("fm_content_island_heist")) ~= 0 then --
        locals.set_int("fm_content_island_heist", 10080 + 24 , 7)
    end
    if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat("fm_content_vehrob_prep")) ~= 0 then --
        locals.set_int("fm_content_vehrob_prep", 9134 + 24 , 7)
    end


    --int* iParam0, int iParam1, int iParam2, int iParam3, int iParam4, var uParam5, var uParam6, int iParam7, bool bParam8, bool bParam9, bool bParam10, bool bParam11, bool bParam12, bool bParam13, int iParam14, int iParam15, bool bParam16, bool bParam17, bool bParam18, bool bParam19, bool bParam20, bool bParam21
    local minigamelocaltable = {
        [1]  = {script_name = "agency_heist3b", minigame_local = 6210},
        [2]  = {script_name = "business_battles_sell", minigame_local = 431},
        [3]  = {script_name = "fm_content_business_battles", minigame_local = 4101},
        [4]  = {script_name = "fm_content_island_heist", minigame_local = 10080},
        [5]  = {script_name = "fm_content_vehrob_casino_prize", minigame_local = 7651 + 2},
        [6]  = {script_name = "fm_content_vehrob_police", minigame_local = 7511},
        [7]  = {script_name = "fm_content_vehrob_prep", minigame_local = 9134},
        [8]  = {script_name = "fm_content_vip_contract_1", minigame_local = 7323},
        [9]  = {script_name = "fm_mission_controller_2020", minigame_local = 28917},
        [10]  = {script_name = "fm_mission_controller", minigame_local = 9775},
        [11]  = {script_name = "gb_cashing_out", minigame_local = 401},
        [12]  = {script_name = "gb_gunrunning_defend", minigame_local = 2261},
        [13]  = {script_name = "gb_sightseer", minigame_local = 460},
    }
        --[12]  = {script_name = "gb_casino_heist", minigame_local = }, --Global_2737317
        --[12]  = {script_name = "gb_casino", minigame_local = }, --Global_2737317
        --[12]  = {script_name = "gb_gangops", minigame_local = }, --Global_2737317
        --[12]  = {script_name = "gb_gunrunning", minigame_local = }, --Global_2737317
        --[12]  = {script_name = "gb_infiltration", minigame_local = }, --Global_2737317
        --[12]  = {script_name = "gb_smuggler", minigame_local = }, --Global_2737317
        --[0]  = {script_name = "business_battles", minigame_local = }, --Global_2737317

    for i = 1, 13 do
        if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat(minigamelocaltable[i].script_name)) ~= 0 then
            minigame_tmp_v = locals.get_int(minigamelocaltable[i].script_name, minigamelocaltable[i].minigame_local) --3274 -- WINBRUTE 
            if (minigame_tmp_v & (1 << 9)) == 0 then
                minigame_tmp_v = minigame_tmp_v ~ (1 << 9)
                locals.set_int(minigamelocaltable[i].script_name, minigamelocaltable[i].minigame_local, minigame_tmp_v)
            end
        end
        if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat(minigamelocaltable[i].script_name)) ~= 0 then
            minigame_tmp_v = locals.get_int(minigamelocaltable[i].script_name, minigamelocaltable[i].minigame_local) --3274 -- WINIP 
            if (minigame_tmp_v & (1 << 18)) == 0 then
                minigame_tmp_v = minigame_tmp_v ~ (1 << 18)
                locals.set_int(minigamelocaltable[i].script_name, minigamelocaltable[i].minigame_local, minigame_tmp_v)
            end
        end
        if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat(minigamelocaltable[i].script_name)) ~= 0 then
            minigame_tmp_v = locals.get_int(minigamelocaltable[i].script_name, minigamelocaltable[i].minigame_local) --3274 --  --Biolab 条形上下浮动对准中间 的小游戏 --"Hack_Success", "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS"
            if (minigame_tmp_v & (1 << 26)) == 0 then
                minigame_tmp_v = minigame_tmp_v ~ (1 << 26)
                locals.set_int(minigamelocaltable[i].script_name, minigamelocaltable[i].minigame_local, minigame_tmp_v)
            end
        end
        if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat(minigamelocaltable[i].script_name)) ~= 0 then
            minigame_tmp_v = locals.get_int(minigamelocaltable[i].script_name, minigamelocaltable[i].minigame_local) --3274 --  --Biolab 条形上下浮动对准中间 的小游戏 --"Hack_Success", "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS"
            if (minigame_tmp_v & (1 << 28)) == 0 then
                minigame_tmp_v = minigame_tmp_v ~ (1 << 28)
                locals.set_int(minigamelocaltable[i].script_name, minigamelocaltable[i].minigame_local, minigame_tmp_v)
            end
        end
    end

    if SCRIPT.GET_NUMBER_OF_THREADS_RUNNING_THE_SCRIPT_WITH_THIS_HASH(joaat("fm_mission_controller")) ~= 0 then --patch for WINIP
        locals.set_int("fm_mission_controller", 142 , 0)
        locals.set_int("fm_mission_controller", 143 , 0)
        locals.set_int("fm_mission_controller", 158 , 7)
    end

    minigame_tmp_v2 = globals.get_int(2737663)
    if (minigame_tmp_v2 & (1 << 9)) == 0 then
        minigame_tmp_v2 = minigame_tmp_v2 ~ (1 << 9)
    end
    if (minigame_tmp_v2 & (1 << 18)) == 0 then
        minigame_tmp_v2 = minigame_tmp_v2 ~ (1 << 18)
    end
    if (minigame_tmp_v2 & (1 << 26)) == 0 then
        minigame_tmp_v2 = minigame_tmp_v2 ~ (1 << 26)
    end
    globals.set_int(2737663, minigame_tmp_v2)
	
	local stash_house_code_local = 119

    if locals.get_int("fm_content_stash_house", stash_house_code_local + 15) == 3 then --藏匿屋密码箱 --Input_Code_Enter_Correct SH_HT_MINIG_C f6310->f6299->f6362
        locals.set_float("fm_content_stash_house", stash_house_code_local + 22 + 1, locals.get_int("fm_content_stash_house", stash_house_code_local + 22 + 1 + 1)) --3274 --使已输入密码与目标相同
        locals.set_float("fm_content_stash_house", stash_house_code_local + 22 + 1 + 2, locals.get_int("fm_content_stash_house", stash_house_code_local + 22 + 1 + 1 + 2)) --3274 --使已输入密码与目标相同
        locals.set_float("fm_content_stash_house", stash_house_code_local + 22 + 1 + 4, locals.get_int("fm_content_stash_house", stash_house_code_local + 22 + 1 + 1 + 4)) --3274 --使已输入密码与目标相同
        gui.show_message("stash house detected","Continue pressing until success")
    end
end)
else
    gui.get_tab("GUI_TAB_NETWORK"):add_text("Mini-game hack lua is outdated")
end
