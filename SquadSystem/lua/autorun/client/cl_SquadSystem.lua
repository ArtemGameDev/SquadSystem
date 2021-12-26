if CLIENT then
    
surface.CreateFont( "TheSquadFont", {
    font = "Times New Roman",
    extended = false,
    size = 18,
    weight = 500,
    blursize = 0,
    scanlines = 0,
    antialias = true,
    underline = false,
    italic = false,
    strikeout = false,
    symbol = false,
    rotary = false,
    shadow = false,
    additive = false,
    outline = false,
} )

surface.CreateFont( "TheSquadFontRect", {
    font = "Times New Roman",
    extended = false,
    size = 12,
    weight = 500,
    blursize = 0,
    scanlines = 0,
    antialias = true,
    underline = true,
    italic = false,
    strikeout = false,
    symbol = false,
    rotary = false,
    shadow = false,
    additive = false,
    outline = false,
} )

surface.CreateFont( "TheSquadFontRect2", {
    font = "Times New Roman",
    extended = false,
    size = 12,
    weight = 500,
    blursize = 0,
    scanlines = 0,
    antialias = true,
    underline = false,
    italic = false,
    strikeout = false,
    symbol = false,
    rotary = false,
    shadow = false,
    additive = false,
    outline = false,
} )

distSq = 4000^2


net.Receive("MessageToClSquadLeave", function()

    local msg = net.ReadEntity()

    if msg:GetNWEntity("SquadLeader") == msg then

        local NotifyPanel = vgui.Create("DNotify")
        NotifyPanel:SetPos(15, 15)
        NotifyPanel:SetSize(150, 210)
    
        local bg = vgui.Create("DPanel", NotifyPanel)
        bg:Dock(FILL)
        bg:SetBackgroundColor(Color(64, 64, 64))
    
        local img = vgui.Create("DImage", bg)
        img:SetPos(11, 11)
        img:SetSize(128, 128)
        img:SetImage("entities/npc_kleiner.png")
    
        local lbl = vgui.Create("DLabel", bg)
        lbl:SetPos(11, 136)
        lbl:SetSize(128, 72)
        lbl:SetText("Загін розформовано!")
        lbl:SetTextColor(Color(255, 200, 0))
        lbl:SetFont("GModNotify")
        lbl:SetWrap(true)
        NotifyPanel:AddItem(bg)

    else

        local NotifyPanel = vgui.Create("DNotify")
        NotifyPanel:SetPos(15, 15)
        NotifyPanel:SetSize(150, 210)
    
        local bg = vgui.Create("DPanel", NotifyPanel)
        bg:Dock(FILL)
        bg:SetBackgroundColor(Color(64, 64, 64))
    
        local img = vgui.Create("DImage", bg)
        img:SetPos(11, 11)
        img:SetSize(128, 128)
        img:SetImage("entities/npc_kleiner.png")
    
        local lbl = vgui.Create("DLabel", bg)
        lbl:SetPos(11, 136)
        lbl:SetSize(128, 72)
        lbl:SetText("Ти покинув загін!")
        lbl:SetTextColor(Color(255, 200, 0))
        lbl:SetFont("GModNotify")
        lbl:SetWrap(true)
        NotifyPanel:AddItem(bg)
    
    end

    
end)

net.Receive("MessageToClSquadAdd", function()

    local NotifyPanel = vgui.Create("DNotify")
    NotifyPanel:SetPos(15, 15)
    NotifyPanel:SetSize(150, 210)

    local bg = vgui.Create("DPanel", NotifyPanel)
    bg:Dock(FILL)
    bg:SetBackgroundColor(Color(64, 64, 64))

    local img = vgui.Create("DImage", bg)
    img:SetPos(11, 11)
    img:SetSize(128, 128)
    img:SetImage("entities/npc_kleiner.png")

    local lbl = vgui.Create("DLabel", bg)
    lbl:SetPos(11, 136)
    lbl:SetSize(128, 72)
    lbl:SetText("Вас бажають додати до загону!")
    lbl:SetTextColor(Color(255, 200, 0))
    lbl:SetFont("GModNotify")
    lbl:SetWrap(true)
    NotifyPanel:AddItem(bg)
end)

net.Receive("MessageToClSquadLeader", function()

    local NotifyPanel = vgui.Create("DNotify")
    NotifyPanel:SetPos(15, 15)
    NotifyPanel:SetSize(150, 210)

    local bg = vgui.Create("DPanel", NotifyPanel)
    bg:Dock(FILL)
    bg:SetBackgroundColor(Color(64, 64, 64))

    local img = vgui.Create("DImage", bg)
    img:SetPos(11, 11)
    img:SetSize(128, 128)
    img:SetImage("entities/npc_kleiner.png")

    local lbl = vgui.Create("DLabel", bg)
    lbl:SetPos(11, 136)
    lbl:SetSize(128, 72)
    lbl:SetText("Ваше запрошення відхилили!")
    lbl:SetTextColor(Color(255, 200, 0))
    lbl:SetFont("GModNotify")
    lbl:SetWrap(true)
    NotifyPanel:AddItem(bg)
end)

hook.Add("HUDPaint", "HUDSquad", function()

    if LocalPlayer():GetNWEntity("SquadLeader") == LocalPlayer() then
        TargetPlayer = LocalPlayer()
    end

    if LocalPlayer():GetNWEntity("SquadLeader") == LocalPlayer() then
        
        local scrw, scrh = ScrW(), ScrH()
        surface.SetDrawColor(128,128,128,60)
        surface.DrawRect( ScrW() / 1.28 , 0, ScrW() / 9, ScrH() / 10 )
    
        draw.SimpleText("1. "..LocalPlayer():Name(),"TheSquadFont", ScrW() / 1.22 , ScrH() * 0.01, Color(0,255,0),1,1)
        draw.SimpleText(" - ","Default", ScrW() / 1.19 , ScrH() * 0.01, color_white,1,1)
        draw.SimpleText(LocalPlayer():Health(),"TheSquadFont", ScrW() / 1.18 , ScrH() * 0.01, Color(255,0,0),1,1)
        draw.SimpleText("      /","TheSquadFont", ScrW() / 1.18 , ScrH() * 0.01, Color(0,0,0),1,1)
        draw.SimpleText("            "..LocalPlayer():Armor(),"TheSquadFont", ScrW() / 1.18 , ScrH() * 0.01, Color(0,0,255),1,1)
        
        if LocalPlayer():GetNWEntity("SquadMember01") != NULL then
            draw.SimpleText("2. "..LocalPlayer():GetNWEntity("SquadMember01"):Name(),"TheSquadFont", ScrW() / 1.22 , ScrH() * 0.03, Color(0,255,0),1,1)
            draw.SimpleText(" - ","Default", ScrW() / 1.19 , ScrH() * 0.03, color_white,1,1)
            draw.SimpleText(LocalPlayer():GetNWEntity("SquadMember01"):Health(),"TheSquadFont", ScrW() / 1.18 , ScrH() * 0.03, Color(255,0,0),1,1)
            draw.SimpleText("      /","TheSquadFont", ScrW() / 1.18 , ScrH() * 0.03, Color(0,0,0),1,1)
            draw.SimpleText("            "..LocalPlayer():GetNWEntity("SquadMember01"):Armor(),"TheSquadFont", ScrW() / 1.18 , ScrH() * 0.03, Color(0,0,255),1,1)
        end
        
        if LocalPlayer():GetNWEntity("SquadMember02") != NULL then
            draw.SimpleText("3. "..LocalPlayer():GetNWEntity("SquadMember02"):Name(),"TheSquadFont", ScrW() / 1.22 , ScrH() * 0.05, Color(0,255,0),1,1)
            draw.SimpleText(" - ","Default", ScrW() / 1.19 , ScrH() * 0.05, color_white,1,1)
            draw.SimpleText(LocalPlayer():GetNWEntity("SquadMember02"):Health(),"TheSquadFont", ScrW() / 1.18 , ScrH() * 0.05, Color(255,0,0),1,1)
            draw.SimpleText("      /","TheSquadFont", ScrW() / 1.18 , ScrH() * 0.05, Color(0,0,0),1,1)
            draw.SimpleText("            "..LocalPlayer():GetNWEntity("SquadMember02"):Armor(),"TheSquadFont", ScrW() / 1.18 , ScrH() * 0.05, Color(0,0,255),1,1)
        end

        if LocalPlayer():GetNWEntity("SquadMember03") != NULL then
            draw.SimpleText("4. "..LocalPlayer():GetNWEntity("SquadMember03"):Name(),"TheSquadFont", ScrW() / 1.22 , ScrH() * 0.07, Color(0,255,0),1,1)
            draw.SimpleText(" - ","Default", ScrW() / 1.19 , ScrH() * 0.07, color_white,1,1)
            draw.SimpleText(LocalPlayer():GetNWEntity("SquadMember03"):Health(),"TheSquadFont", ScrW() / 1.18 , ScrH() * 0.07, Color(255,0,0),1,1)
            draw.SimpleText("      /","TheSquadFont", ScrW() / 1.18 , ScrH() * 0.07, Color(0,0,0),1,1)
            draw.SimpleText("            "..LocalPlayer():GetNWEntity("SquadMember03"):Armor(),"TheSquadFont", ScrW() / 1.18 , ScrH() * 0.07, Color(0,0,255),1,1)
        end
    
        if LocalPlayer():GetNWEntity("SquadMember04") != NULL then
            draw.SimpleText("5. "..LocalPlayer():GetNWEntity("SquadMember04"):Name(),"TheSquadFont", ScrW() / 1.22 , ScrH() * 0.09, Color(0,255,0),1,1)
            draw.SimpleText(" - ","Default", ScrW() / 1.19 , ScrH() * 0.09, color_white,1,1)
            draw.SimpleText(LocalPlayer():GetNWEntity("SquadMember04"):Health(),"TheSquadFont", ScrW() / 1.18 , ScrH() * 0.09, Color(255,0,0),1,1)
            draw.SimpleText("      /","TheSquadFont", ScrW() / 1.18 , ScrH() * 0.09, Color(0,0,0),1,1)
            draw.SimpleText("            "..LocalPlayer():GetNWEntity("SquadMember04"):Armor(),"TheSquadFont", ScrW() / 1.18 , ScrH() * 0.09, Color(0,0,255),1,1)
        end
    
        if LocalPlayer():GetNWEntity("SquadMember01") != NULL then
            local pos1 = LocalPlayer():GetNWEntity("SquadMember01"):GetPos()
            if LocalPlayer():GetPos():DistToSqr(pos1) < distSq then
                pos1 = pos1:ToScreen()
                surface.SetDrawColor(0,0,0,140)
                surface.DrawRect(pos1.x -22, pos1.y - 40, 40, 40)
                draw.SimpleText(LocalPlayer():GetNWEntity("SquadMember01"):Name(), "TheSquadFontRect2", pos1.x - 3, pos1.y - 8, Color(255,255,0), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
                draw.SimpleText(math.Round(math.Distance(LocalPlayer():GetPos().x, LocalPlayer():GetPos().y, LocalPlayer():GetNWEntity("SquadMember01"):GetPos().x, LocalPlayer():GetNWEntity("SquadMember01"):GetPos().y )), "TheSquadFontRect", pos1.x - 3, ((pos1.y) - 18), Color(0,0,255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
            end
        end

        if LocalPlayer():GetNWEntity("SquadMember02") != NULL then
            local pos2 = LocalPlayer():GetNWEntity("SquadMember02"):GetPos()
            if LocalPlayer():GetPos():DistToSqr(pos2) < distSq then
                pos2 = pos2:ToScreen()
                surface.SetDrawColor(0,0,0,140)
                surface.DrawRect(pos2.x -22, pos2.y - 40, 40, 40)
                draw.SimpleText(LocalPlayer():GetNWEntity("SquadMember02"):Name(), "TheSquadFontRect2", pos2.x - 3, pos2.y - 8, Color(255,255,0), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
                draw.SimpleText(math.Round(math.Distance(LocalPlayer():GetPos().x, LocalPlayer():GetPos().y, LocalPlayer():GetNWEntity("SquadMember02"):GetPos().x, LocalPlayer():GetNWEntity("SquadMember02"):GetPos().y )), "TheSquadFontRect", pos2.x - 3, ((pos2.y) - 18), Color(0,0,255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
            end
        end
    
        if LocalPlayer():GetNWEntity("SquadMember03") != NULL then
            local pos3 = LocalPlayer():GetNWEntity("SquadMember03"):GetPos()
            if LocalPlayer():GetPos():DistToSqr(pos3) < distSq then
                pos3 = pos3:ToScreen()
                surface.SetDrawColor(0,0,0,140)
                surface.DrawRect(pos3.x -22, pos3.y - 40, 40, 40)
                draw.SimpleText(LocalPlayer():GetNWEntity("SquadMember03"):Name(), "TheSquadFontRect2", pos3.x - 3, pos3.y - 8, Color(255,255,0), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
                draw.SimpleText(math.Round(math.Distance(LocalPlayer():GetPos().x, LocalPlayer():GetPos().y, LocalPlayer():GetNWEntity("SquadMember03"):GetPos().x, LocalPlayer():GetNWEntity("SquadMember03"):GetPos().y )), "TheSquadFontRect", pos3.x - 3, ((pos3.y) - 18), Color(0,0,255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
            end
        end
    
        if LocalPlayer():GetNWEntity("SquadMember04") != NULL then
            local pos4 = LocalPlayer():GetNWEntity("SquadMember04"):GetPos()
            if LocalPlayer():GetPos():DistToSqr(pos4) < distSq then
                pos4 = pos4:ToScreen()
                surface.SetDrawColor(0,0,0,140)
                surface.DrawRect(pos4.x -22, pos4.y - 40, 40, 40)
                draw.SimpleText(LocalPlayer():GetNWEntity("SquadMember04"):Name(), "TheSquadFontRect2", pos4.x - 3, pos4.y - 8, Color(255,255,0), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
                draw.SimpleText(math.Round(math.Distance(LocalPlayer():GetPos().x, LocalPlayer():GetPos().y, LocalPlayer():GetNWEntity("SquadMember04"):GetPos().x, LocalPlayer():GetNWEntity("SquadMember04"):GetPos().y )), "TheSquadFontRect", pos4.x - 3, ((pos4.y) - 18), Color(0,0,255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
            end 
        end

    end

    if LocalPlayer():GetNWEntity("SquadMember01") == LocalPlayer() and LocalPlayer():GetNWEntity("SquadMember01") == TargetPlayer:GetNWEntity("SquadMember01") then

        local scrw, scrh = ScrW(), ScrH()
        surface.SetDrawColor(128,128,128,60)
        surface.DrawRect( ScrW() / 1.28 , 0, ScrW() / 9, ScrH() / 10 )
    
        draw.SimpleText("1. "..TargetPlayer:Name(),"TheSquadFont", ScrW() / 1.22 , ScrH() * 0.01, Color(0,255,0),1,1)
        draw.SimpleText(" - ","Default", ScrW() / 1.19 , ScrH() * 0.01, color_white,1,1)
        draw.SimpleText(TargetPlayer:Health(),"TheSquadFont", ScrW() / 1.18 , ScrH() * 0.01, Color(255,0,0),1,1)
        draw.SimpleText("      /","TheSquadFont", ScrW() / 1.18 , ScrH() * 0.01, Color(0,0,0),1,1)
        draw.SimpleText("            "..TargetPlayer:Armor(),"TheSquadFont", ScrW() / 1.18 , ScrH() * 0.01, Color(0,0,255),1,1)
        
        draw.SimpleText("2. "..LocalPlayer():Name(),"TheSquadFont", ScrW() / 1.22 , ScrH() * 0.03, Color(0,255,0),1,1)
        draw.SimpleText(" - ","Default", ScrW() / 1.19 , ScrH() * 0.03, color_white,1,1)
        draw.SimpleText(LocalPlayer():Health(),"TheSquadFont", ScrW() / 1.18 , ScrH() * 0.03, Color(255,0,0),1,1)
        draw.SimpleText("      /","TheSquadFont", ScrW() / 1.18 , ScrH() * 0.03, Color(0,0,0),1,1)
        draw.SimpleText("            "..LocalPlayer():Armor(),"TheSquadFont", ScrW() / 1.18 , ScrH() * 0.03, Color(0,0,255),1,1)
        
        if TargetPlayer:GetNWEntity("SquadMember02") != NULL then
            draw.SimpleText("3. "..TargetPlayer:GetNWEntity("SquadMember02"):Name(),"TheSquadFont", ScrW() / 1.22 , ScrH() * 0.05, Color(0,255,0),1,1)
            draw.SimpleText(" - ","Default", ScrW() / 1.19 , ScrH() * 0.05, color_white,1,1)
            draw.SimpleText(TargetPlayer:GetNWEntity("SquadMember02"):Health(),"TheSquadFont", ScrW() / 1.18 , ScrH() * 0.05, Color(255,0,0),1,1)
            draw.SimpleText("      /","TheSquadFont", ScrW() / 1.18 , ScrH() * 0.05, Color(0,0,0),1,1)
            draw.SimpleText("            "..TargetPlayer:GetNWEntity("SquadMember02"):Armor(),"TheSquadFont", ScrW() / 1.18 , ScrH() * 0.05, Color(0,0,255),1,1)
        end

        if TargetPlayer:GetNWEntity("SquadMember03") != NULL then
            draw.SimpleText("4. "..TargetPlayer:GetNWEntity("SquadMember03"):Name(),"TheSquadFont", ScrW() / 1.22 , ScrH() * 0.07, Color(0,255,0),1,1)
            draw.SimpleText(" - ","Default", ScrW() / 1.19 , ScrH() * 0.07, color_white,1,1)
            draw.SimpleText(TargetPlayer:GetNWEntity("SquadMember03"):Health(),"TheSquadFont", ScrW() / 1.18 , ScrH() * 0.07, Color(255,0,0),1,1)
            draw.SimpleText("      /","TheSquadFont", ScrW() / 1.18 , ScrH() * 0.07, Color(0,0,0),1,1)
            draw.SimpleText("            "..TargetPlayer:GetNWEntity("SquadMember03"):Armor(),"TheSquadFont", ScrW() / 1.18 , ScrH() * 0.07, Color(0,0,255),1,1)
        end
    
        if TargetPlayer:GetNWEntity("SquadMember04") != NULL then
            draw.SimpleText("5. "..TargetPlayer:GetNWEntity("SquadMember04"):Name(),"TheSquadFont", ScrW() / 1.22 , ScrH() * 0.09, Color(0,255,0),1,1)
            draw.SimpleText(" - ","Default", ScrW() / 1.19 , ScrH() * 0.09, color_white,1,1)
            draw.SimpleText(TargetPlayer:GetNWEntity("SquadMember04"):Health(),"TheSquadFont", ScrW() / 1.18 , ScrH() * 0.09, Color(255,0,0),1,1)
            draw.SimpleText("      /","TheSquadFont", ScrW() / 1.18 , ScrH() * 0.09, Color(0,0,0),1,1)
            draw.SimpleText("            "..TargetPlayer:GetNWEntity("SquadMember04"):Armor(),"TheSquadFont", ScrW() / 1.18 , ScrH() * 0.09, Color(0,0,255),1,1)
        end
    
        local pos1 = TargetPlayer:GetPos()
        if LocalPlayer():GetPos():DistToSqr(pos1) < distSq then
            pos1 = pos1:ToScreen()
            surface.SetDrawColor(0,0,0,140)
            surface.DrawRect(pos1.x -22, pos1.y - 40, 40, 40)
            draw.SimpleText(TargetPlayer:Name(), "TheSquadFontRect2", pos1.x - 3, pos1.y - 8, Color(255,255,0), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
            draw.SimpleText(math.Round(math.Distance(LocalPlayer():GetPos().x, LocalPlayer():GetPos().y, TargetPlayer:GetPos().x, TargetPlayer:GetPos().y )), "TheSquadFontRect", pos1.x - 3, ((pos1.y) - 18), Color(0,0,255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
        end

        if TargetPlayer:GetNWEntity("SquadMember02") != NULL then
            local pos2 = TargetPlayer:GetNWEntity("SquadMember02"):GetPos()
            if LocalPlayer():GetPos():DistToSqr(pos2) < distSq then
                pos2 = pos2:ToScreen()
                surface.SetDrawColor(0,0,0,140)
                surface.DrawRect(pos2.x -22, pos2.y - 40, 40, 40)
                draw.SimpleText(TargetPlayer:GetNWEntity("SquadMember02"):Name(), "TheSquadFontRect2", pos2.x - 3, pos2.y - 8, Color(255,255,0), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
                draw.SimpleText(math.Round(math.Distance(LocalPlayer():GetPos().x, LocalPlayer():GetPos().y, TargetPlayer:GetNWEntity("SquadMember02"):GetPos().x, TargetPlayer:GetNWEntity("SquadMember02"):GetPos().y )), "TheSquadFontRect", pos2.x - 3, ((pos2.y) - 18), Color(0,0,255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
            end
        end
    
        if TargetPlayer:GetNWEntity("SquadMember03") != NULL then
            local pos3 = TargetPlayer:GetNWEntity("SquadMember03"):GetPos()
            if LocalPlayer():GetPos():DistToSqr(pos3) < distSq then
                pos3 = pos3:ToScreen()
                surface.SetDrawColor(0,0,0,140)
                surface.DrawRect(pos3.x -22, pos3.y - 40, 40, 40)
                draw.SimpleText(TargetPlayer:GetNWEntity("SquadMember03"):Name(), "TheSquadFontRect2", pos3.x - 3, pos3.y - 8, Color(255,255,0), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
                draw.SimpleText(math.Round(math.Distance(LocalPlayer():GetPos().x, LocalPlayer():GetPos().y, TargetPlayer:GetNWEntity("SquadMember03"):GetPos().x, TargetPlayer:GetNWEntity("SquadMember03"):GetPos().y )), "TheSquadFontRect", pos3.x - 3, ((pos3.y) - 18), Color(0,0,255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
            end
        end
    
        if TargetPlayer:GetNWEntity("SquadMember04") != NULL then
            local pos4 = TargetPlayer:GetNWEntity("SquadMember04"):GetPos()
            if LocalPlayer():GetPos():DistToSqr(pos4) < distSq then
                pos4 = pos4:ToScreen()
                surface.SetDrawColor(0,0,0,140)
                surface.DrawRect(pos4.x -22, pos4.y - 40, 40, 40)
                draw.SimpleText(TargetPlayer:GetNWEntity("SquadMember04"):Name(), "TheSquadFontRect2", pos4.x - 3, pos4.y - 8, Color(255,255,0), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
                draw.SimpleText(math.Round(math.Distance(LocalPlayer():GetPos().x, LocalPlayer():GetPos().y, TargetPlayer:GetNWEntity("SquadMember04"):GetPos().x, TargetPlayer:GetNWEntity("SquadMember04"):GetPos().y )), "TheSquadFontRect", pos4.x - 3, ((pos4.y) - 18), Color(0,0,255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
            end 
        end
    
    end

    if LocalPlayer():GetNWEntity("SquadMember02") == LocalPlayer() and LocalPlayer():GetNWEntity("SquadMember02") == TargetPlayer:GetNWEntity("SquadMember02") then

        local scrw, scrh = ScrW(), ScrH()
        surface.SetDrawColor(128,128,128,60)
        surface.DrawRect( ScrW() / 1.28 , 0, ScrW() / 9, ScrH() / 10 )
    
        draw.SimpleText("1. "..TargetPlayer:Name(),"TheSquadFont", ScrW() / 1.22 , ScrH() * 0.01, Color(0,255,0),1,1)
        draw.SimpleText(" - ","Default", ScrW() / 1.19 , ScrH() * 0.01, color_white,1,1)
        draw.SimpleText(TargetPlayer:Health(),"TheSquadFont", ScrW() / 1.18 , ScrH() * 0.01, Color(255,0,0),1,1)
        draw.SimpleText("      /","TheSquadFont", ScrW() / 1.18 , ScrH() * 0.01, Color(0,0,0),1,1)
        draw.SimpleText("            "..TargetPlayer:Armor(),"TheSquadFont", ScrW() / 1.18 , ScrH() * 0.01, Color(0,0,255),1,1)

        draw.SimpleText("3. "..LocalPlayer():Name(),"TheSquadFont", ScrW() / 1.22 , ScrH() * 0.05, Color(0,255,0),1,1)
        draw.SimpleText(" - ","Default", ScrW() / 1.19 , ScrH() * 0.05, color_white,1,1)
        draw.SimpleText(LocalPlayer():Health(),"TheSquadFont", ScrW() / 1.18 , ScrH() * 0.05, Color(255,0,0),1,1)
        draw.SimpleText("      /","TheSquadFont", ScrW() / 1.18 , ScrH() * 0.05, Color(0,0,0),1,1)
        draw.SimpleText("            "..LocalPlayer():Armor(),"TheSquadFont", ScrW() / 1.18 , ScrH() * 0.05, Color(0,0,255),1,1)
        
        if TargetPlayer:GetNWEntity("SquadMember01") != NULL then
            draw.SimpleText("2. "..TargetPlayer:GetNWEntity("SquadMember01"):Name(),"TheSquadFont", ScrW() / 1.22 , ScrH() * 0.03, Color(0,255,0),1,1)
            draw.SimpleText(" - ","Default", ScrW() / 1.19 , ScrH() * 0.03, color_white,1,1)
            draw.SimpleText(TargetPlayer:GetNWEntity("SquadMember01"):Health(),"TheSquadFont", ScrW() / 1.18 , ScrH() * 0.03, Color(255,0,0),1,1)
            draw.SimpleText("      /","TheSquadFont", ScrW() / 1.18 , ScrH() * 0.03, Color(0,0,0),1,1)
            draw.SimpleText("            "..TargetPlayer:GetNWEntity("SquadMember01"):Armor(),"TheSquadFont", ScrW() / 1.18 , ScrH() * 0.03, Color(0,0,255),1,1)
        end
        
        if TargetPlayer:GetNWEntity("SquadMember03") != NULL then
            draw.SimpleText("4. "..TargetPlayer:GetNWEntity("SquadMember03"):Name(),"TheSquadFont", ScrW() / 1.22 , ScrH() * 0.07, Color(0,255,0),1,1)
            draw.SimpleText(" - ","Default", ScrW() / 1.19 , ScrH() * 0.07, color_white,1,1)
            draw.SimpleText(TargetPlayer:GetNWEntity("SquadMember03"):Health(),"TheSquadFont", ScrW() / 1.18 , ScrH() * 0.07, Color(255,0,0),1,1)
            draw.SimpleText("      /","TheSquadFont", ScrW() / 1.18 , ScrH() * 0.07, Color(0,0,0),1,1)
            draw.SimpleText("            "..TargetPlayer:GetNWEntity("SquadMember03"):Armor(),"TheSquadFont", ScrW() / 1.18 , ScrH() * 0.07, Color(0,0,255),1,1)
        end
    
        if TargetPlayer:GetNWEntity("SquadMember04") != NULL then
            draw.SimpleText("5. "..TargetPlayer:GetNWEntity("SquadMember04"):Name(),"TheSquadFont", ScrW() / 1.22 , ScrH() * 0.09, Color(0,255,0),1,1)
            draw.SimpleText(" - ","Default", ScrW() / 1.19 , ScrH() * 0.09, color_white,1,1)
            draw.SimpleText(TargetPlayer:GetNWEntity("SquadMember04"):Health(),"TheSquadFont", ScrW() / 1.18 , ScrH() * 0.09, Color(255,0,0),1,1)
            draw.SimpleText("      /","TheSquadFont", ScrW() / 1.18 , ScrH() * 0.09, Color(0,0,0),1,1)
            draw.SimpleText("            "..TargetPlayer:GetNWEntity("SquadMember04"):Armor(),"TheSquadFont", ScrW() / 1.18 , ScrH() * 0.09, Color(0,0,255),1,1)
        end

        if TargetPlayer:GetNWEntity("SquadMember01") != NULL then
            pos1 = TargetPlayer:GetNWEntity("SquadMember01"):GetPos()
            if LocalPlayer():GetPos():DistToSqr(pos1) < distSq then
                pos1 = pos1:ToScreen()
                surface.SetDrawColor(0,0,0,140)
                surface.DrawRect(pos1.x -22, pos1.y - 40, 40, 40)
                draw.SimpleText(TargetPlayer:GetNWEntity("SquadMember01"):Name(), "TheSquadFontRect2", pos1.x - 3, pos1.y - 8, Color(255,255,0), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
                draw.SimpleText(math.Round(math.Distance(LocalPlayer():GetPos().x, LocalPlayer():GetPos().y, TargetPlayer:GetNWEntity("SquadMember01"):GetPos().x, TargetPlayer:GetNWEntity("SquadMember01"):GetPos().y )), "TheSquadFontRect", pos1.x - 3, ((pos1.y) - 18), Color(0,0,255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
            end
        end

        local pos2 = TargetPlayer:GetPos()
        if LocalPlayer():GetPos():DistToSqr(pos2) < distSq then
            pos2 = pos2:ToScreen()
            surface.SetDrawColor(0,0,0,140)
            surface.DrawRect(pos2.x -22, pos2.y - 40, 40, 40)
            draw.SimpleText(TargetPlayer:Name(), "TheSquadFontRect2", pos2.x - 3, pos2.y - 8, Color(255,255,0), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
            draw.SimpleText(math.Round(math.Distance(LocalPlayer():GetPos().x, LocalPlayer():GetPos().y,TargetPlayer:GetPos().x,TargetPlayer:GetPos().y )), "TheSquadFontRect", pos2.x - 3, ((pos2.y) - 18), Color(0,0,255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
        end
    
        if TargetPlayer:GetNWEntity("SquadMember03") != NULL then
            local pos3 = TargetPlayer:GetNWEntity("SquadMember03"):GetPos()
            if LocalPlayer():GetPos():DistToSqr(pos3) < distSq then
                pos3 = pos3:ToScreen()
                surface.SetDrawColor(0,0,0,140)
                surface.DrawRect(pos3.x -22, pos3.y - 40, 40, 40)
                draw.SimpleText(TargetPlayer:GetNWEntity("SquadMember03"):Name(), "TheSquadFontRect2", pos3.x - 3, pos3.y - 8, Color(255,255,0), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
                draw.SimpleText(math.Round(math.Distance(LocalPlayer():GetPos().x, LocalPlayer():GetPos().y, TargetPlayer:GetNWEntity("SquadMember03"):GetPos().x, TargetPlayer:GetNWEntity("SquadMember03"):GetPos().y )), "TheSquadFontRect", pos3.x - 3, ((pos3.y) - 18), Color(0,0,255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
            end
        end
    
        if TargetPlayer:GetNWEntity("SquadMember04") != NULL then
            local pos4 = TargetPlayer:GetNWEntity("SquadMember04"):GetPos()
            if LocalPlayer():GetPos():DistToSqr(pos4) < distSq then
                pos4 = pos4:ToScreen()
                surface.SetDrawColor(0,0,0,140)
                surface.DrawRect(pos4.x -22, pos4.y - 40, 40, 40)
                draw.SimpleText(TargetPlayer:GetNWEntity("SquadMember04"):Name(), "TheSquadFontRect2", pos4.x - 3, pos4.y - 8, Color(255,255,0), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
                draw.SimpleText(math.Round(math.Distance(LocalPlayer():GetPos().x, LocalPlayer():GetPos().y,TargetPlayer:GetNWEntity("SquadMember04"):GetPos().x,TargetPlayer:GetNWEntity("SquadMember04"):GetPos().y )), "TheSquadFontRect", pos4.x - 3, ((pos4.y) - 18), Color(0,0,255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
            end 
        end
    
    end
    
    if LocalPlayer():GetNWEntity("SquadMember03") == LocalPlayer() and LocalPlayer():GetNWEntity("SquadMember03") == TargetPlayer:GetNWEntity("SquadMember03") then

        local scrw, scrh = ScrW(), ScrH()
        surface.SetDrawColor(128,128,128,60)
        surface.DrawRect( ScrW() / 1.28 , 0, ScrW() / 9, ScrH() / 10 )
    
        draw.SimpleText("1. "..TargetPlayer:Name(),"TheSquadFont", ScrW() / 1.22 , ScrH() * 0.01, Color(0,255,0),1,1)
        draw.SimpleText(" - ","Default", ScrW() / 1.19 , ScrH() * 0.01, color_white,1,1)
        draw.SimpleText(TargetPlayer:Health(),"TheSquadFont", ScrW() / 1.18 , ScrH() * 0.01, Color(255,0,0),1,1)
        draw.SimpleText("      /","TheSquadFont", ScrW() / 1.18 , ScrH() * 0.01, Color(0,0,0),1,1)
        draw.SimpleText("            "..TargetPlayer:Armor(),"TheSquadFont", ScrW() / 1.18 , ScrH() * 0.01, Color(0,0,255),1,1)

        draw.SimpleText("4. "..LocalPlayer:Name(),"TheSquadFont", ScrW() / 1.22 , ScrH() * 0.07, Color(0,255,0),1,1)
        draw.SimpleText(" - ","Default", ScrW() / 1.19 , ScrH() * 0.07, color_white,1,1)
        draw.SimpleText(LocalPlayer:Health(),"TheSquadFont", ScrW() / 1.18 , ScrH() * 0.07, Color(255,0,0),1,1)
        draw.SimpleText("      /","TheSquadFont", ScrW() / 1.18 , ScrH() * 0.07, Color(0,0,0),1,1)
        draw.SimpleText("            "..LocalPlayer():Armor(),"TheSquadFont", ScrW() / 1.18 , ScrH() * 0.07, Color(0,0,255),1,1)
        
        if TargetPlayer:GetNWEntity("SquadMember01") != NULL then
            draw.SimpleText("2. "..TargetPlayer:GetNWEntity("SquadMember01"):Name(),"TheSquadFont", ScrW() / 1.22 , ScrH() * 0.03, Color(0,255,0),1,1)
            draw.SimpleText(" - ","Default", ScrW() / 1.19 , ScrH() * 0.03, color_white,1,1)
            draw.SimpleText(TargetPlayer:GetNWEntity("SquadMember01"):Health(),"TheSquadFont", ScrW() / 1.18 , ScrH() * 0.03, Color(255,0,0),1,1)
            draw.SimpleText("      /","TheSquadFont", ScrW() / 1.18 , ScrH() * 0.03, Color(0,0,0),1,1)
            draw.SimpleText("            "..TargetPlayer:GetNWEntity("SquadMember01"):Armor(),"TheSquadFont", ScrW() / 1.18 , ScrH() * 0.03, Color(0,0,255),1,1)
        end

        if TargetPlayer:GetNWEntity("SquadMember02") != NULL then
            draw.SimpleText("3. "..TargetPlayer:GetNWEntity("SquadMember02"):Name(),"TheSquadFont", ScrW() / 1.22 , ScrH() * 0.05, Color(0,255,0),1,1)
            draw.SimpleText(" - ","Default", ScrW() / 1.19 , ScrH() * 0.05, color_white,1,1)
            draw.SimpleText(TargetPlayer:GetNWEntity("SquadMember02"):Health(),"TheSquadFont", ScrW() / 1.18 , ScrH() * 0.05, Color(255,0,0),1,1)
            draw.SimpleText("      /","TheSquadFont", ScrW() / 1.18 , ScrH() * 0.05, Color(0,0,0),1,1)
            draw.SimpleText("            "..TargetPlayer:GetNWEntity("SquadMember02"):Armor(),"TheSquadFont", ScrW() / 1.18 , ScrH() * 0.05, Color(0,0,255),1,1)
        end
    
        if TargetPlayer:GetNWEntity("SquadMember04") != NULL then
            draw.SimpleText("5. "..TargetPlayer:GetNWEntity("SquadMember04"):Name(),"TheSquadFont", ScrW() / 1.22 , ScrH() * 0.09, Color(0,255,0),1,1)
            draw.SimpleText(" - ","Default", ScrW() / 1.19 , ScrH() * 0.09, color_white,1,1)
            draw.SimpleText(TargetPlayer:GetNWEntity("SquadMember04"):Health(),"TheSquadFont", ScrW() / 1.18 , ScrH() * 0.09, Color(255,0,0),1,1)
            draw.SimpleText("      /","TheSquadFont", ScrW() / 1.18 , ScrH() * 0.09, Color(0,0,0),1,1)
            draw.SimpleText("            "..TargetPlayer:GetNWEntity("SquadMember04"):Armor(),"TheSquadFont", ScrW() / 1.18 , ScrH() * 0.09, Color(0,0,255),1,1)
        end

        if TargetPlayer:GetNWEntity("SquadMember01") != NULL then
            pos1 = TargetPlayer:GetNWEntity("SquadMember01"):GetPos()
            if LocalPlayer():GetPos():DistToSqr(pos1) < distSq then
                pos1 = pos1:ToScreen()
                surface.SetDrawColor(0,0,0,140)
                surface.DrawRect(pos1.x -22, pos1.y - 40, 40, 40)
                draw.SimpleText(TargetPlayer:GetNWEntity("SquadMember01"):Name(), "TheSquadFontRect2", pos1.x - 3, pos1.y - 8, Color(255,255,0), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
                draw.SimpleText(math.Round(math.Distance(LocalPlayer():GetPos().x, LocalPlayer():GetPos().y, TargetPlayer:GetNWEntity("SquadMember01"):GetPos().x, TargetPlayer:GetNWEntity("SquadMember01"):GetPos().y )), "TheSquadFontRect", pos1.x - 3, ((pos1.y) - 18), Color(0,0,255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
            end
        end
    
        local pos3 = TargetPlayer:GetPos()
        if LocalPlayer():GetPos():DistToSqr(pos3) < distSq then
            pos3 = pos3:ToScreen()
            surface.SetDrawColor(0,0,0,140)
            surface.DrawRect(pos3.x -22, pos3.y - 40, 40, 40)
            draw.SimpleText(TargetPlayer:Name(), "TheSquadFontRect2", pos3.x - 3, pos3.y - 8, Color(255,255,0), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
            draw.SimpleText(math.Round(math.Distance(LocalPlayer():GetPos().x, LocalPlayer():GetPos().y, TargetPlayer:GetPos().x, TargetPlayer:GetPos().y )), "TheSquadFontRect", pos3.x - 3, ((pos3.y) - 18), Color(0,0,255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
        end
    
        if TargetPlayer:GetNWEntity("SquadMember04") != NULL then
            local pos4 = TargetPlayer:GetNWEntity("SquadMember04"):GetPos()
            if LocalPlayer():GetPos():DistToSqr(pos4) < distSq then
                pos4 = pos4:ToScreen()
                surface.SetDrawColor(0,0,0,140)
                surface.DrawRect(pos4.x -22, pos4.y - 40, 40, 40)
                draw.SimpleText(TargetPlayer:GetNWEntity("SquadMember04"):Name(), "TheSquadFontRect2", pos4.x - 3, pos4.y - 8, Color(255,255,0), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
                draw.SimpleText(math.Round(math.Distance(LocalPlayer():GetPos().x, LocalPlayer():GetPos().y,TargetPlayer:GetNWEntity("SquadMember04"):GetPos().x,TargetPlayer:GetNWEntity("SquadMember04"):GetPos().y )), "TheSquadFontRect", pos4.x - 3, ((pos4.y) - 18), Color(0,0,255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
            end 
        end
    
    end

    if LocalPlayer():GetNWEntity("SquadMember04") == LocalPlayer() and LocalPlayer():GetNWEntity("SquadMember04") == TargetPlayer:GetNWEntity("SquadMember04") then

        local scrw, scrh = ScrW(), ScrH()
        surface.SetDrawColor(128,128,128,60)
        surface.DrawRect( ScrW() / 1.28 , 0, ScrW() / 9, ScrH() / 10 )
    
        draw.SimpleText("1. "..TargetPlayer:Name(),"TheSquadFont", ScrW() / 1.22 , ScrH() * 0.01, Color(0,255,0),1,1)
        draw.SimpleText(" - ","Default", ScrW() / 1.19 , ScrH() * 0.01, color_white,1,1)
        draw.SimpleText(TargetPlayer:Health(),"TheSquadFont", ScrW() / 1.18 , ScrH() * 0.01, Color(255,0,0),1,1)
        draw.SimpleText("      /","TheSquadFont", ScrW() / 1.18 , ScrH() * 0.01, Color(0,0,0),1,1)
        draw.SimpleText("            "..TargetPlayer:Armor(),"TheSquadFont", ScrW() / 1.18 , ScrH() * 0.01, Color(0,0,255),1,1)

        draw.SimpleText("5. "..LocalPlayer:Name(),"TheSquadFont", ScrW() / 1.22 , ScrH() * 0.09, Color(0,255,0),1,1)
        draw.SimpleText(" - ","Default", ScrW() / 1.19 , ScrH() * 0.09, color_white,1,1)
        draw.SimpleText(LocalPlayer:Health(),"TheSquadFont", ScrW() / 1.18 , ScrH() * 0.09, Color(255,0,0),1,1)
        draw.SimpleText("      /","TheSquadFont", ScrW() / 1.18 , ScrH() * 0.09, Color(0,0,0),1,1)
        draw.SimpleText("            "..LocalPlayer:Armor(),"TheSquadFont", ScrW() / 1.18 , ScrH() * 0.09, Color(0,0,255),1,1)
        
        if TargetPlayer:GetNWEntity("SquadMember01") != NULL then
            draw.SimpleText("2. "..TargetPlayer:GetNWEntity("SquadMember01"):Name(),"TheSquadFont", ScrW() / 1.22 , ScrH() * 0.03, Color(0,255,0),1,1)
            draw.SimpleText(" - ","Default", ScrW() / 1.19 , ScrH() * 0.03, color_white,1,1)
            draw.SimpleText(TargetPlayer:GetNWEntity("SquadMember01"):Health(),"TheSquadFont", ScrW() / 1.18 , ScrH() * 0.03, Color(255,0,0),1,1)
            draw.SimpleText("      /","TheSquadFont", ScrW() / 1.18 , ScrH() * 0.03, Color(0,0,0),1,1)
            draw.SimpleText("            "..TargetPlayer:GetNWEntity("SquadMember01"):Armor(),"TheSquadFont", ScrW() / 1.18 , ScrH() * 0.03, Color(0,0,255),1,1)
        end

        if TargetPlayer:GetNWEntity("SquadMember02") != NULL then
            draw.SimpleText("3. "..TargetPlayer:GetNWEntity("SquadMember02"):Name(),"TheSquadFont", ScrW() / 1.22 , ScrH() * 0.05, Color(0,255,0),1,1)
            draw.SimpleText(" - ","Default", ScrW() / 1.19 , ScrH() * 0.05, color_white,1,1)
            draw.SimpleText(TargetPlayer:GetNWEntity("SquadMember02"):Health(),"TheSquadFont", ScrW() / 1.18 , ScrH() * 0.05, Color(255,0,0),1,1)
            draw.SimpleText("      /","TheSquadFont", ScrW() / 1.18 , ScrH() * 0.05, Color(0,0,0),1,1)
            draw.SimpleText("            "..TargetPlayer:GetNWEntity("SquadMember02"):Armor(),"TheSquadFont", ScrW() / 1.18 , ScrH() * 0.05, Color(0,0,255),1,1)
        end

        if TargetPlayer:GetNWEntity("SquadMember03") != NULL then
            draw.SimpleText("4. "..TargetPlayer:GetNWEntity("SquadMember03"):Name(),"TheSquadFont", ScrW() / 1.22 , ScrH() * 0.07, Color(0,255,0),1,1)
            draw.SimpleText(" - ","Default", ScrW() / 1.19 , ScrH() * 0.07, color_white,1,1)
            draw.SimpleText(TargetPlayer:GetNWEntity("SquadMember03"):Health(),"TheSquadFont", ScrW() / 1.18 , ScrH() * 0.07, Color(255,0,0),1,1)
            draw.SimpleText("      /","TheSquadFont", ScrW() / 1.18 , ScrH() * 0.07, Color(0,0,0),1,1)
            draw.SimpleText("            "..TargetPlayer:GetNWEntity("SquadMember03"):Armor(),"TheSquadFont", ScrW() / 1.18 , ScrH() * 0.07, Color(0,0,255),1,1)
        end

        if TargetPlayer:GetNWEntity("SquadMember01") != NULL then
            pos1 = TargetPlayer:GetNWEntity("SquadMember01"):GetPos()
            if LocalPlayer():GetPos():DistToSqr(pos1) < distSq then
                pos1 = pos1:ToScreen()
                surface.SetDrawColor(0,0,0,140)
                surface.DrawRect(pos1.x -22, pos1.y - 40, 40, 40)
                draw.SimpleText(TargetPlayer:GetNWEntity("SquadMember01"):Name(), "TheSquadFontRect2", pos1.x - 3, pos1.y - 8, Color(255,255,0), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
                draw.SimpleText(math.Round(math.Distance(LocalPlayer():GetPos().x, LocalPlayer():GetPos().y, TargetPlayer:GetNWEntity("SquadMember01"):GetPos().x, TargetPlayer:GetNWEntity("SquadMember01"):GetPos().y )), "TheSquadFontRect", pos1.x - 3, ((pos1.y) - 18), Color(0,0,255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
            end
        end

        if TargetPlayer:GetNWEntity("SquadMember02") != NULL then
            local pos2 = TargetPlayer:GetNWEntity("SquadMember02"):GetPos()
            if LocalPlayer():GetPos():DistToSqr(pos2) < distSq then
                pos2 = pos2:ToScreen()
                surface.SetDrawColor(0,0,0,140)
                surface.DrawRect(pos2.x -22, pos2.y - 40, 40, 40)
                draw.SimpleText(TargetPlayer:GetNWEntity("SquadMember02"):Name(), "TheSquadFontRect2", pos2.x - 3, pos2.y - 8, Color(255,255,0), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
                draw.SimpleText(math.Round(math.Distance(LocalPlayer():GetPos().x, LocalPlayer():GetPos().y, TargetPlayer:GetNWEntity("SquadMember02"):GetPos().x, TargetPlayer:GetNWEntity("SquadMember02"):GetPos().y )), "TheSquadFontRect", pos2.x - 3, ((pos2.y) - 18), Color(0,0,255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
            end
        end

        if TargetPlayer:GetNWEntity("SquadMember03") != NULL then
            local pos3 = TargetPlayer:GetNWEntity("SquadMember03"):GetPos()
            if LocalPlayer():GetPos():DistToSqr(pos3) < distSq then
                pos3 = pos3:ToScreen()
                surface.SetDrawColor(0,0,0,140)
                surface.DrawRect(pos3.x -22, pos3.y - 40, 40, 40)
                draw.SimpleText(TargetPlayer:GetNWEntity("SquadMember03"):Name(), "TheSquadFontRect2", pos3.x - 3, pos3.y - 8, Color(255,255,0), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
                draw.SimpleText(math.Round(math.Distance(LocalPlayer():GetPos().x, LocalPlayer():GetPos().y, TargetPlayer:GetNWEntity("SquadMember03"):GetPos().x, TargetPlayer:GetNWEntity("SquadMember03"):GetPos().y )), "TheSquadFontRect", pos3.x - 3, ((pos3.y) - 18), Color(0,0,255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
            end
        end

        local pos4 = TargetPlayer:GetPos()
        if LocalPlayer():GetPos():DistToSqr(pos4) < distSq then
            pos4 = pos4:ToScreen()
            surface.SetDrawColor(0,0,0,140)
            surface.DrawRect(pos4.x -22, pos4.y - 40, 40, 40)
            draw.SimpleText(TargetPlayer:Name(), "TheSquadFontRect2", pos4.x - 3, pos4.y - 8, Color(255,255,0), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
            draw.SimpleText(math.Round(math.Distance(LocalPlayer():GetPos().x, LocalPlayer():GetPos().y,TargetPlayer:GetPos().x,TargetPlayer:GetPos().y )), "TheSquadFontRect", pos4.x - 3, ((pos4.y) - 18), Color(0,0,255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
        end 
    
    end

end)
end