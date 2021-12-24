hook.Add("PlayerDeath", "SquadThink", function(ply)
    for i = 1,4 do
        ply:SetNWEntity("SquadMember0" .. i, NULL)
    end
    ply:SetNWEntity("SquadLeader", NULL)
end)

util.AddNetworkString("MessageToClSquadLeave")
concommand.Add("SquadMenuLeave", function(ply)

    if TargetPlayer:GetNWEntity("SquadLeader") == ply then

        for i = 1,4 do
            TargetPlayer:SetNWEntity("SquadMember0" .. i, NULL)
        end

        for i = 1,4 do
            ply:SetNWEntity("SquadMember0" .. i,NULL)
        end

        ply:SetNWEntity("SquadLeader",NULL)

    end

    if ply:GetNWEntity("SquadLeader") != ply then

        for i = 1, 4 do
            if ply:GetNWEntity("SquadMember0" .. i) == ply then
                ply:SetNWEntity("SquadMember0" .. i,NULL)
                if TargetPlayer:GetNWEntity("SquadMember0" .. i) == ply:GetNWEntity("SquadMember0" .. i) then
                    TargetPlayer:SetNWEntity("SquadMember0" .. i,NULL)
                end
            end
        end

    end

    net.Start( "MessageToClSquadLeave" )
        net.WriteEntity(ply)
    net.Send(ply)

end)

concommand.Add("SquadAdmin", function(ply)
    local trEntity = ply:GetEyeTrace().Entity
    local Distance = ply:EyePos():Distance(trEntity:GetPos())
    TargetPlayer:SetNWEntity("SquadMember01", trEntity)
    print(TargetPlayer:GetNWEntity("SquadMember01"))
end)

util.AddNetworkString("MessageToClSquadAdd")
concommand.Add("SquadMemberTryAdd", function(ply)
    local trEntity = ply:GetEyeTrace().Entity
    local Distance = ply:EyePos():Distance(trEntity:GetPos())
    if Distance < 200 then
        if trEntity:IsPlayer() and (trEntity:GetNWEntity("SquadMember01") != trEntity and trEntity:GetNWEntity("SquadMember02") != trEntity and trEntity:GetNWEntity("SquadMember03") != trEntity and trEntity:GetNWEntity("SquadMember04") != trEntity) then

            net.Start( "MessageToClSquadAdd" )
            net.Send(trEntity)

            if ply:GetNWEntity("SquadLeader") == NULL then
                TargetPlayer = ply
                TargetPlayer:SetNWEntity("SquadLeader",ply)
            end

            trEntity:SetNWInt("TryAdd", 5)
            
        end
    end
end)

util.AddNetworkString("MessageToClSquadInfo")
concommand.Add("SquadMemberAccept", function(ply)

    if ply:GetNWInt("TryAdd") == 5 then
        
        for i = 1, 4 do
                
            if TargetPlayer:GetNWEntity("SquadMember0" .. i) == NULL then
    
                TargetPlayer:SetNWEntity("SquadMember0" .. i, trEntity)
                ply:SetNWEntity("SquadMember0" .. i, trEntity)
                
                net.Start("MessageToClSquadInfo")
                    net.WriteEntity(TargetPlayer) 
                net.Send(ply)
            
            end
    
        end

        ply:SetNWInt("TryAdd", NULL)

    end

end)

util.AddNetworkString("Message")
concommand.Add("Abobus", function(ply)

    net.Start("Message")
        net.WriteEntity(TargetPlayer) 
    net.Send(ply)

end)

util.AddNetworkString("MessageToClSquadLeader")
concommand.Add("SquadMemberDecline", function(ply)

    ply:SetNWInt("TryAdd", NULL)
    net.Start( "MessageToClSquadLeader" )
    net.Send(TargetPlayer)

end)
