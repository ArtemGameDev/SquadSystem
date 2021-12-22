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

concommand.Add("SquadMenuLeave", function(ply)

    if TargetPlayer:GetNWEntity("SquadLeader") == ply then
        for i = 1,4 do
            TargetPlayer:SetNWEntity("SquadMember0" .. i, NULL)
        end

        for i = 1,4 do
            ply:SetNWEntity("SquadMember0" .. i,NULL)
        end

        ply:SetNWEntity("SquadLeader",NULL)
        
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

    end

    if ply:GetNWEntity("SquadLeader") != ply then

        if ply:GetNWEntity("SquadMember01") == ply then
            ply:SetNWEntity("SquadMember01",NULL)
            if TargetPlayer:GetNWEntity("SquadMember01") == ply:GetNWEntity("SquadMember01") then
                TargetPlayer:SetNWEntity("SquadMember01",NULL)
            end

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
        if ply:GetNWEntity("SquadMember02") == ply then
            ply:SetNWEntity("SquadMember02",NULL)
            if TargetPlayer:GetNWEntity("SquadMember02") == ply:GetNWEntity("SquadMember02") then
                TargetPlayer:SetNWEntity("SquadMember02",NULL)
            end

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
        if ply:GetNWEntity("SquadMember03") == ply then
            ply:SetNWEntity("SquadMember03",NULL)
            if TargetPlayer:GetNWEntity("SquadMember03") == ply:GetNWEntity("SquadMember03") then
                TargetPlayer:SetNWEntity("SquadMember03",NULL)
            end

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
        if ply:GetNWEntity("SquadMember04") == ply then
            ply:SetNWEntity("SquadMember04",NULL)
            if TargetPlayer:GetNWEntity("SquadMember04") == ply:GetNWEntity("SquadMember04") then
                TargetPlayer:SetNWEntity("SquadMember04",NULL)
            end

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
    end
end)

concommand.Add("SquadMemberAccept", function(ply)
    
    if ply:GetNWEntity("SquadLeader") == NULL then
            
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
        lbl:SetText("Ти готовий приєднатися до загіну!")
        lbl:SetTextColor(Color(255, 200, 0))
        lbl:SetFont("GModNotify")
        lbl:SetWrap(true)
        NotifyPanel:AddItem(bg)
    
    end

end)

concommand.Add("SquadMemberDecline", function(ply)
    
    if ply:GetNWEntity("SquadLeader") == NULL then
        
        ply:SetNWEntity("SquadMember01", NULL)
        ply:SetNWEntity("SquadMember02", NULL)
        ply:SetNWEntity("SquadMember03", NULL)
        ply:SetNWEntity("SquadMember04", NULL)
        
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
        lbl:SetText("Ти не готовий приєднатися до загіну!")
        lbl:SetTextColor(Color(255, 200, 0))
        lbl:SetFont("GModNotify")
        lbl:SetWrap(true)
        NotifyPanel:AddItem(bg)
    
    end

end)

concommand.Add("SquadMemberAdd", function(ply)
    local trEntity = ply:GetEyeTrace().Entity
    local Distance = ply:EyePos():Distance(trEntity:GetPos())
    if Distance < 200 then
        if trEntity:IsPlayer() and (trEntity:GetNWEntity("SquadMember01") != trEntity and trEntity:GetNWEntity("SquadMember02") != trEntity and trEntity:GetNWEntity("SquadMember03") != trEntity and trEntity:GetNWEntity("SquadMember04") != trEntity) then

            if ply:GetNWEntity("SquadLeader") == NULL then
                ply:SetNWEntity("SquadLeader",ply)
                TargetPlayer = ply
            end
            
            if TargetPlayer:GetNWEntity("SquadMember01") == NULL then

                TargetPlayer:SetNWEntity("SquadMember01", trEntity)
                trEntity:SetNWEntity("SquadMember01", trEntity)

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
                lbl:SetText("Ти запросив до загіну!")
                lbl:SetTextColor(Color(255, 200, 0))
                lbl:SetFont("GModNotify")
                lbl:SetWrap(true)
                NotifyPanel:AddItem(bg)

            elseif TargetPlayer:GetNWEntity("SquadMember02") == NULL then
                
                TargetPlayer:SetNWEntity("SquadMember02", trEntity)
                trEntity:SetNWEntity("SquadMember02", trEntity)

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
                lbl:SetText("Ти запросив до загіну!")
                lbl:SetTextColor(Color(255, 200, 0))
                lbl:SetFont("GModNotify")
                lbl:SetWrap(true)
                NotifyPanel:AddItem(bg)

            elseif TargetPlayer:GetNWEntity("SquadMember03") == NULL then
                
                TargetPlayer:SetNWEntity("SquadMember03", trEntity)
                trEntity:SetNWEntity("SquadMember03", trEntity)

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
                lbl:SetText("Ти запросив до загіну!")
                lbl:SetTextColor(Color(255, 200, 0))
                lbl:SetFont("GModNotify")
                lbl:SetWrap(true)
                NotifyPanel:AddItem(bg)

            elseif TargetPlayer:GetNWEntity("SquadMember04") == NULL then
                
                TargetPlayer:SetNWEntity("SquadMember04", trEntity)
                trEntity:SetNWEntity("SquadMember04", trEntity)

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
                lbl:SetText("Ти запросив до загіну!")
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
                lbl:SetText("Ти не зміг до загіну!")
                lbl:SetTextColor(Color(255, 200, 0))
                lbl:SetFont("GModNotify")
                lbl:SetWrap(true)
                NotifyPanel:AddItem(bg)

            end

        end
    end
end)

hook.Add("HUDPaint", "HUDSquad", function()

    if LocalPlayer():GetNWEntity("SquadMember01") != NULL and LocalPlayer():GetNWEntity("SquadMember01"):Health() <= 0 then
        LocalPlayer():SetNWEntity("SquadMember01", NULL)

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
        lbl:SetText("Хтось загинув!")
        lbl:SetTextColor(Color(255, 200, 0))
        lbl:SetFont("GModNotify")
        lbl:SetWrap(true)
        NotifyPanel:AddItem(bg)

    end

    if LocalPlayer():GetNWEntity("SquadMember02") != NULL and LocalPlayer():GetNWEntity("SquadMember02"):Health() <= 0 then
        LocalPlayer():SetNWEntity("SquadMember02", NULL)
        
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
        lbl:SetText("Хтось загинув!")
        lbl:SetTextColor(Color(255, 200, 0))
        lbl:SetFont("GModNotify")
        lbl:SetWrap(true)
        NotifyPanel:AddItem(bg)
    end

    if LocalPlayer():GetNWEntity("SquadMember03") != NULL and LocalPlayer():GetNWEntity("SquadMember03"):Health() <= 0 then
        LocalPlayer():SetNWEntity("SquadMember03", NULL)
        
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
        lbl:SetText("Хтось загинув!")
        lbl:SetTextColor(Color(255, 200, 0))
        lbl:SetFont("GModNotify")
        lbl:SetWrap(true)
        NotifyPanel:AddItem(bg)
    end

    if LocalPlayer():GetNWEntity("SquadMember04") != NULL and LocalPlayer():GetNWEntity("SquadMember04"):Health() <= 0 then
        LocalPlayer():SetNWEntity("SquadMember04", NULL)
        
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
        lbl:SetText("Хтось загинув!")
        lbl:SetTextColor(Color(255, 200, 0))
        lbl:SetFont("GModNotify")
        lbl:SetWrap(true)
        NotifyPanel:AddItem(bg)
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
            if LocalPlayer():GetNWEntity("SquadMember01"):IsPlayer() then
                draw.SimpleText("2. "..LocalPlayer():GetNWEntity("SquadMember01"):Name(),"TheSquadFont", ScrW() / 1.22 , ScrH() * 0.03, Color(0,255,0),1,1)
                draw.SimpleText(" - ","Default", ScrW() / 1.19 , ScrH() * 0.03, color_white,1,1)
                draw.SimpleText(LocalPlayer():GetNWEntity("SquadMember01"):Health(),"TheSquadFont", ScrW() / 1.18 , ScrH() * 0.03, Color(255,0,0),1,1)
                draw.SimpleText("      /","TheSquadFont", ScrW() / 1.18 , ScrH() * 0.03, Color(0,0,0),1,1)
                draw.SimpleText("            "..LocalPlayer():GetNWEntity("SquadMember01"):Armor(),"TheSquadFont", ScrW() / 1.18 , ScrH() * 0.03, Color(0,0,255),1,1)
            end
        end

        if LocalPlayer():GetNWEntity("SquadMember02") != NULL then
            if LocalPlayer():GetNWEntity("SquadMember02"):IsPlayer() then
                draw.SimpleText("3. "..LocalPlayer():GetNWEntity("SquadMember02"):Name(),"TheSquadFont", ScrW() / 1.22 , ScrH() * 0.05, Color(0,255,0),1,1)
                draw.SimpleText(" - ","Default", ScrW() / 1.19 , ScrH() * 0.05, color_white,1,1)
                draw.SimpleText(LocalPlayer():GetNWEntity("SquadMember02"):Health(),"TheSquadFont", ScrW() / 1.18 , ScrH() * 0.05, Color(255,0,0),1,1)
                draw.SimpleText("      /","TheSquadFont", ScrW() / 1.18 , ScrH() * 0.05, Color(0,0,0),1,1)
                draw.SimpleText("            "..LocalPlayer():GetNWEntity("SquadMember02"):Armor(),"TheSquadFont", ScrW() / 1.18 , ScrH() * 0.05, Color(0,0,255),1,1)
            end
        end

        if LocalPlayer():GetNWEntity("SquadMember03") != NULL then
            if LocalPlayer():GetNWEntity("SquadMember03"):IsPlayer() then
                draw.SimpleText("4. "..LocalPlayer():GetNWEntity("SquadMember03"):Name(),"TheSquadFont", ScrW() / 1.22 , ScrH() * 0.07, Color(0,255,0),1,1)
                draw.SimpleText(" - ","Default", ScrW() / 1.19 , ScrH() * 0.07, color_white,1,1)
                draw.SimpleText(LocalPlayer():GetNWEntity("SquadMember03"):Health(),"TheSquadFont", ScrW() / 1.18 , ScrH() * 0.07, Color(255,0,0),1,1)
                draw.SimpleText("      /","TheSquadFont", ScrW() / 1.18 , ScrH() * 0.07, Color(0,0,0),1,1)
                draw.SimpleText("            "..LocalPlayer():GetNWEntity("SquadMember03"):Armor(),"TheSquadFont", ScrW() / 1.18 , ScrH() * 0.07, Color(0,0,255),1,1)
            end
        end

        if LocalPlayer():GetNWEntity("SquadMember04") != NULL then
            if LocalPlayer():GetNWEntity("SquadMember04"):IsPlayer() then
                draw.SimpleText("5. "..LocalPlayer():GetNWEntity("SquadMember04"):Name(),"TheSquadFont", ScrW() / 1.22 , ScrH() * 0.09, Color(0,255,0),1,1)
                draw.SimpleText(" - ","Default", ScrW() / 1.19 , ScrH() * 0.09, color_white,1,1)
                draw.SimpleText(LocalPlayer():GetNWEntity("SquadMember04"):Health(),"TheSquadFont", ScrW() / 1.18 , ScrH() * 0.09, Color(255,0,0),1,1)
                draw.SimpleText("      /","TheSquadFont", ScrW() / 1.18 , ScrH() * 0.09, Color(0,0,0),1,1)
                draw.SimpleText("            "..LocalPlayer():GetNWEntity("SquadMember04"):Armor(),"TheSquadFont", ScrW() / 1.18 , ScrH() * 0.09, Color(0,0,255),1,1)
            end
        end

        if LocalPlayer():GetNWEntity("SquadMember01") != NULL and LocalPlayer():GetNWEntity("SquadMember01"):IsPlayer() then
            pos1 = LocalPlayer():GetNWEntity("SquadMember01"):GetPos()
            if LocalPlayer():GetPos():DistToSqr(pos1) < distSq then
                pos1 = pos1:ToScreen()
                surface.SetDrawColor(0,0,0,140)
                surface.DrawRect(pos1.x -22, pos1.y - 40, 40, 40)
                draw.SimpleText(LocalPlayer():GetNWEntity("SquadMember01"):Name(), "TheSquadFontRect2", pos1.x - 3, pos1.y - 8, Color(255,255,0), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
                draw.SimpleText(math.Round(math.Distance(LocalPlayer():GetPos().x, LocalPlayer():GetPos().y, LocalPlayer():GetNWEntity("SquadMember01"):GetPos().x, LocalPlayer():GetNWEntity("SquadMember01"):GetPos().y )), "TheSquadFontRect", pos1.x - 3, ((pos1.y) - 18), Color(0,0,255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
            end
        end

        if LocalPlayer():GetNWEntity("SquadMember02") != NULL and LocalPlayer():GetNWEntity("SquadMember02"):IsPlayer() then
            pos2 = LocalPlayer():GetNWEntity("SquadMember02"):GetPos()
            if LocalPlayer():GetPos():DistToSqr(pos2) < distSq then
                pos2 = pos2:ToScreen()
                surface.SetDrawColor(0,0,0,140)
                surface.DrawRect(pos2.x -22, pos2.y - 40, 40, 40)
                draw.SimpleText(LocalPlayer():GetNWEntity("SquadMember02"):Name(), "TheSquadFontRect2", pos2.x - 3, pos2.y - 8, Color(255,255,0), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
                draw.SimpleText(math.Round(math.Distance(LocalPlayer():GetPos().x, LocalPlayer():GetPos().y, LocalPlayer():GetNWEntity("SquadMember02"):GetPos().x, LocalPlayer():GetNWEntity("SquadMember02"):GetPos().y )), "TheSquadFontRect", pos2.x - 3, ((pos2.y) - 18), Color(0,0,255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
            end
        end

        if LocalPlayer():GetNWEntity("SquadMember03") != NULL and LocalPlayer():GetNWEntity("SquadMember03"):IsPlayer() then
            pos3 = LocalPlayer():GetNWEntity("SquadMember03"):GetPos()
            if LocalPlayer():GetPos():DistToSqr(pos3) < distSq then
                pos3 = pos3:ToScreen()
                surface.SetDrawColor(0,0,0,140)
                surface.DrawRect(pos3.x -22, pos3.y - 40, 40, 40)
                draw.SimpleText(LocalPlayer():GetNWEntity("SquadMember03"):Name(), "TheSquadFontRect2", pos3.x - 3, pos3.y - 8, Color(255,255,0), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
                draw.SimpleText(math.Round(math.Distance(LocalPlayer():GetPos().x, LocalPlayer():GetPos().y, LocalPlayer():GetNWEntity("SquadMember03"):GetPos().x, LocalPlayer():GetNWEntity("SquadMember03"):GetPos().y )), "TheSquadFontRect", pos3.x - 3, ((pos3.y) - 18), Color(0,0,255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
            end
        end

        if LocalPlayer():GetNWEntity("SquadMember04") != NULL and LocalPlayer():GetNWEntity("SquadMember04"):IsPlayer() then
            pos4 = LocalPlayer():GetNWEntity("SquadMember04"):GetPos()
            if LocalPlayer():GetPos():DistToSqr(pos4) < distSq then
                pos4 = pos4:ToScreen()
                surface.SetDrawColor(0,0,0,140)
                surface.DrawRect(pos4.x -22, pos4.y - 40, 40, 40)
                draw.SimpleText(LocalPlayer():GetNWEntity("SquadMember04"):Name(), "TheSquadFontRect2", pos4.x - 3, pos4.y - 8, Color(255,255,0), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
                draw.SimpleText(math.Round(math.Distance(LocalPlayer():GetPos().x, LocalPlayer():GetPos().y, LocalPlayer():GetNWEntity("SquadMember04"):GetPos().x, LocalPlayer():GetNWEntity("SquadMember04"):GetPos().y )), "TheSquadFontRect", pos4.x - 3, ((pos4.y) - 18), Color(0,0,255), TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
            end
        end

    end

end)
end