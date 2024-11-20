---@diagnostic disable: lowercase-global

-- MS Virtual Key Codes: https://learn.microsoft.com/en-us/windows/win32/inputdev/virtual-key-codes
local minigame_button = { code = 0x2E, name = "[DEL]" }

local function GetBuildNumber()
    local gvov = memory.scan_pattern("8B C3 33 D2 C6 44 24 20")
    local game_build_offset = gvov:add(0x24):rip()
    return game_build_offset:get_string()
end

local TARGET_BUILD  <const> = "3351"
local CURRENT_BUILD <const> = GetBuildNumber()

local local_H3_hack_1   = 53019 -- (3258 - 3351) -- func_14304(&uLocal_53019, &uLocal_52954[uLocal_31621[epctLocal_3231 /*292*/].f_27 /*2*/], false, joaat("heist"), Global_786547.f_1);
local local_H3_hack_2   = 54085 -- (3258 - 3351) -- func_14306(&uLocal_54085, &uLocal_54020[uLocal_31621[epctLocal_3231 /*292*/].f_27 /*2*/], false, joaat("heist"), Global_786547.f_1);
local local_H3_hack_1_p = 2840  -- (3258 - 3351) -- func_6367(&uLocal_2840, &(uLocal_1304.f_729), false, joaat("practice"), 0);
local local_H3_hack_2_p = 3841  -- (3258 - 3351) -- func_6321(&uLocal_3841, &(uLocal_1304.f_729), false, joaat("practice"), 0);
local local_H4_hack     = 24880 -- (3258 - 3351) -- func_6004(&uLocal_24880, &uLocal_24871[func_389(epctParam1, 3) /*2*/], false, joaat("heist"), Global_786547.f_1);

---@param s script_util
local function minigame_hack(s)
    -- All casino fingerprints and keyboard access control
    if script.is_active("fm_mission_controller_2020") then
        locals.set_int("fm_mission_controller_2020", 9018 + 24, 7)
        locals.set_int("fm_mission_controller_2020", 980 + 135, 3)                                             -- 3095 case 3 Pass_Remote
        locals.set_int("fm_mission_controller_2020", 29700, 6)                                                 -- 3274 -- Perico drainage port grille cutting
        locals.set_float("fm_mission_controller_2020", 30939 + 3, 100)                                         -- 3274 Perico plasma cutting
        locals.set_int("fm_mission_controller_2020", 1254, 2)                                                  -- Insurance office task (Bottom Dollar Bail Office Mission)  GRAPHICS::DRAW_SPRITE("MPHotwire", "failed"
        -- voltlab Complete immediately
        locals.set_int("fm_mission_controller_2020", 1723, locals.get_int("fm_mission_controller_2020", 1724)) -- 3274 --voltlab The actual value and the target value are always consistent
        locals.set_int("fm_mission_controller_2020", 1725, 3)                                                  -- 3274 Three lines have been connected

        if locals.get_int("fm_mission_controller_2020", 30914) == 3 then                                       -- Perico password box -- Input_Code_Enter_Correct
            locals.set_int("fm_mission_controller_2020", 30915, 2)                                             -- 3274 -- Three sets of passwords have been entered
            locals.set_float("fm_mission_controller_2020", 30915 + 1 + 1,
                locals.get_int("fm_mission_controller_2020", 30915 + 1 + 1 + 1))                               -- 3274 -- Make the password that has been input is the same as the goal
            locals.set_float("fm_mission_controller_2020", 30915 + 1 + 1 + 2,
                locals.get_int("fm_mission_controller_2020", 30915 + 1 + 1 + 1 + 2))                           -- 3274 -- Make the password that has been input is the same as the goal
            locals.set_float("fm_mission_controller_2020", 30915 + 1 + 1 + 4,
                locals.get_int("fm_mission_controller_2020", 30915 + 1 + 1 + 1 + 4))                           -- 3274 -- Make the password that has been input is the same as the goal
            PAD.SET_CONTROL_VALUE_NEXT_FRAME(2, 237, 1.0)                                                      -- Confirm Password
        end

        local_H4_hack_v = locals.get_int("fm_mission_controller_2020", local_H4_hack) -- Perico finger clone
        if (local_H4_hack_v & (1 << 0)) == 0 then
            local_H4_hack_v = local_H4_hack_v ~ (1 << 0)
            locals.set_int("fm_mission_controller_2020", local_H4_hack, local_H4_hack_v)
        end
    end

    if script.is_active("fm_mission_controller") then
        -- patch for WINIP -----
        locals.set_int("fm_mission_controller", 142, 0)
        locals.set_int("fm_mission_controller", 143, 0)
        locals.set_int("fm_mission_controller", 158, 7)
        -------------------------
        locals.set_int("fm_mission_controller", 1271 + 135, 3) -- 3274 case 3 Pass_Remote
        locals.set_int("fm_mission_controller", 11778 + 24, 7) -- CIRC_COMP
        -- Automatic drilling
        locals.set_float("fm_mission_controller", 10069 + 11, 1) -- 3274 Quanfu Bank drilling
        locals.set_int("fm_mission_controller", 10109 + 2, 8)    -- 3274 Casino vault door drilling DLC_HEIST3\HEIST_FINALE_LASER_DRILL case 8

        -- Casino fingerprint access control
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

        -- Casino double keycards
        locals.set_int("fm_mission_controller", 31765 + math.max(0, self.get_id()) * 292, 8)
        locals.set_int("fm_mission_controller", 61624, 5)

        -- Doomsday 1-Server Group (Heist2-Mission1-Prep3:SERVER FARM)  GRAPHICS::DRAW_SPRITE("MPHotwire", "failed"
        locals.set_int("fm_mission_controller", 1545, 2)
    end

    if script.is_active("am_mp_arc_cab_manager") then -- Casino fingerprint access control-exercise
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

    -- all voltlab
    --[[
      if (iLocal_765 == iLocal_764)
        {
          AUDIO::PLAY_SOUND_FRONTEND(-1, "All_Connected_Correct", uParam1->f_741, true);
        }
    ]]
    if script.is_active("fm_content_island_heist") then
        locals.set_int("fm_content_island_heist", 766, locals.get_int("fm_content_island_heist", 767)) -- 3274 --voltlab The actual value and the target value are always consistent
        locals.set_int("fm_content_island_heist", 768, 3)                                              -- 3274  Three lines have been connected
        locals.set_int("fm_content_island_heist", 10080 + 24, 7)
    end

    if script.is_active("fm_content_vehrob_prep") then
        locals.set_int("fm_content_vehrob_prep", 547, locals.get_int("fm_content_vehrob_prep", 548)) -- 3274 --voltlab The actual value and the target value are always consistent
        locals.set_int("fm_content_vehrob_prep", 549, 3)                                             -- 3274  Three lines have been connected
        locals.set_int("fm_content_vehrob_prep", 9134 + 24, 7)
    end

    if script.is_active("am_mp_arc_cab_manager") then
        locals.set_int("am_mp_arc_cab_manager", 455, locals.get_int("am_mp_arc_cab_manager", 456)) -- 3274 --voltlabThe actual value and the target value are always consistent
        locals.set_int("am_mp_arc_cab_manager", 457, 3)                                            -- 3274  Three lines have been connected
    end

    -- All collected data Evil the firewall cracking
    if script.is_active("fm_content_vehrob_casino_prize") then
        locals.set_int("fm_content_vehrob_casino_prize", 1045 + 135, 3) -- 3274 case 3 Pass_Remote
    end

    if script.is_active("fm_content_business_battles") then
        locals.set_int("fm_content_business_battles", 4101 + 24, 7)
    end

    -- int* iParam0, int iParam1, int iParam2, int iParam3, int iParam4, var uParam5, var uParam6, int iParam7, bool bParam8, bool bParam9, bool bParam10, bool bParam11, bool bParam12, bool bParam13, int iParam14, int iParam15, bool bParam16, bool bParam17, bool bParam18, bool bParam19, bool bParam20, bool bParam21
    local minigamelocaltable = {
        [1]  = { script_name = "agency_heist3b", minigame_local = 6210 },
        [2]  = { script_name = "business_battles_sell", minigame_local = 431 },
        [3]  = { script_name = "fm_content_business_battles", minigame_local = 4101 },
        [4]  = { script_name = "fm_content_island_heist", minigame_local = 10080 },
        [5]  = { script_name = "fm_content_vehrob_casino_prize", minigame_local = 7651 + 2 },
        [6]  = { script_name = "fm_content_vehrob_police", minigame_local = 7511 },
        [7]  = { script_name = "fm_content_vehrob_prep", minigame_local = 9134 },
        [8]  = { script_name = "fm_content_vip_contract_1", minigame_local = 7323 },
        [9]  = { script_name = "fm_mission_controller_2020", minigame_local = 28917 },
        [10] = { script_name = "fm_mission_controller", minigame_local = 9775 },
        [11] = { script_name = "gb_cashing_out", minigame_local = 401 },
        [12] = { script_name = "gb_gunrunning_defend", minigame_local = 2261 },
        [13] = { script_name = "gb_sightseer", minigame_local = 460 },
    }
    --[12]  = {script_name = "gb_casino_heist", minigame_local = }, --Global_2737317
    --[12]  = {script_name = "gb_casino", minigame_local = }, --Global_2737317
    --[12]  = {script_name = "gb_gangops", minigame_local = }, --Global_2737317
    --[12]  = {script_name = "gb_gunrunning", minigame_local = }, --Global_2737317
    --[12]  = {script_name = "gb_infiltration", minigame_local = }, --Global_2737317
    --[12]  = {script_name = "gb_smuggler", minigame_local = }, --Global_2737317
    --[0]  = {script_name = "business_battles", minigame_local = }, --Global_2737317

    for i = 1, 13 do
        if script.is_active(minigamelocaltable[i].script_name) then
            minigame_tmp_v = locals.get_int(minigamelocaltable[i].script_name, minigamelocaltable[i].minigame_local) -- 3274 -- WINBRUTE
            if (minigame_tmp_v & (1 << 9)) == 0 then
                minigame_tmp_v = minigame_tmp_v ~ (1 << 9)
                locals.set_int(minigamelocaltable[i].script_name, minigamelocaltable[i].minigame_local, minigame_tmp_v)
            end
        end

        if script.is_active(minigamelocaltable[i].script_name) then
            minigame_tmp_v = locals.get_int(minigamelocaltable[i].script_name, minigamelocaltable[i].minigame_local) -- 3274 -- WINIP
            if (minigame_tmp_v & (1 << 18)) == 0 then
                minigame_tmp_v = minigame_tmp_v ~ (1 << 18)
                locals.set_int(minigamelocaltable[i].script_name, minigamelocaltable[i].minigame_local, minigame_tmp_v)
            end
        end

        if script.is_active(minigamelocaltable[i].script_name) then
            minigame_tmp_v = locals.get_int(minigamelocaltable[i].script_name, minigamelocaltable[i].minigame_local) -- 3274 --  -- Biolab 条形上下浮动对准中间 的小游戏 -- "Hack_Success", "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS"
            if (minigame_tmp_v & (1 << 26)) == 0 then
                minigame_tmp_v = minigame_tmp_v ~ (1 << 26)
                locals.set_int(minigamelocaltable[i].script_name, minigamelocaltable[i].minigame_local, minigame_tmp_v)
            end
        end

        if script.is_active(minigamelocaltable[i].script_name) then
            minigame_tmp_v = locals.get_int(minigamelocaltable[i].script_name, minigamelocaltable[i].minigame_local) -- 3274 --  -- Biolab 条形上下浮动对准中间 的小游戏 -- "Hack_Success", "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS"
            if (minigame_tmp_v & (1 << 28)) == 0 then
                minigame_tmp_v = minigame_tmp_v ~ (1 << 28)
                locals.set_int(minigamelocaltable[i].script_name, minigamelocaltable[i].minigame_local, minigame_tmp_v)
            end
        end
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

    -- Stash house safe
    -- Credits: ShinyWasabi's Daily Collectibles https://github.com/YimMenu-Lua/DailyCollectibles
    if script.is_active("fm_content_stash_house") then
        for i = 0, 2 do
            local safe_code = locals.get_int("fm_content_stash_house", 119 + 22 + (1 + (i * 2)) + 1)
            locals.set_float("fm_content_stash_house", 119 + 22 + (1 + (i * 2)), safe_code)
        end
        s:sleep(250)
        PAD.SET_CONTROL_VALUE_NEXT_FRAME(2, 235, 1.0)
        s:sleep(250)
        PAD.SET_CONTROL_VALUE_NEXT_FRAME(2, 235, 1.0)
        s:sleep(250)
        PAD.SET_CONTROL_VALUE_NEXT_FRAME(2, 237, 1.0)
    end
end

mgh_tab = gui.get_tab("GUI_TAB_NETWORK")
mgh_tab:add_imgui(function()
    ImGui.Spacing(); ImGui.SeparatorText("Minigame Hack")
    if CURRENT_BUILD == TARGET_BUILD then
        if ImGui.Button("Instant Hack") then
            script.run_in_fiber(function(mgh)
                minigame_hack(mgh)
            end)
        end
        if ImGui.IsItemHovered() then
            ImGui.SetTooltip(string.format("TIP: You can also press %s to use Minigame Hack without opening the menu.", minigame_button.name))
        end
    else
        ImGui.Text("Minigame Hack is outdated.")
    end
end)

if CURRENT_BUILD == TARGET_BUILD then
    event.register_handler(menu_event.Wndproc, function(_, msg, wParam, _)
        if msg == 0x0101 or msg == 0x0105 then
            if wParam == minigame_button.code then
                script.run_in_fiber(function(mgh)
                    minigame_hack(mgh)
                end)
            end
        end
    end)
end
