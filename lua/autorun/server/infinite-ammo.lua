local addonName = "Infinite Ammo"

hook.Add( "PlayerPostThink", addonName, function( ply )
    local weapon = ply:GetActiveWeapon()
    if not weapon or not weapon:IsValid() then return end

    local clip1Type = weapon:GetPrimaryAmmoType()
    if isnumber( clip1Type ) and clip1Type >= 0 and ply:GetAmmoCount( clip1Type ) <= 0 then
        ply:GiveAmmo( game.GetAmmoMax( clip1Type ), clip1Type, true )
    end

    local clip2Type = weapon:GetSecondaryAmmoType()
    if isnumber( clip2Type ) and clip2Type >= 0 and ply:GetAmmoCount( clip2Type ) <= 0 then
        ply:GiveAmmo( game.GetAmmoMax( clip2Type ), clip2Type, true )
    end
end )
