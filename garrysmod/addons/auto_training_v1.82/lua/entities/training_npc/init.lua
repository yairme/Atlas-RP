AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include("shared.lua")

function ENT:Initialize()
    if RDV and RDV.TRAINING then
        self:SetModel(table.Random(RDV.TRAINING.CFG.Models))
    end

    self:SetSolid(SOLID_VPHYSICS)
    self:PhysicsInit(SOLID_VPHYSICS)
    self:SetNPCState(NPC_STATE_SCRIPT)
    self:CapabilitiesAdd(CAP_ANIMATEDFACE)
    self:CapabilitiesAdd(CAP_TURN_HEAD)
    self:SetUseType(SIMPLE_USE)
    self:PhysicsInit(SOLID_BBOX)
    self:SetHullType(HULL_HUMAN)
    self:SetHullSizeNormal()

    local phys = self:GetPhysicsObject()

    if phys:IsValid() then
        phys:Wake()
        phys:EnableMotion(false)
    end

    if RDV and RDV.TRAINING then
        timer.Simple(0, function()
            if IsValid(self) and RDV.TRAINING.CFG.Randomize then
                local COUNT = self:SkinCount()
                local SKIN = math.random(1, COUNT)

                self:SetSkin(SKIN)
                self:ResetSequence(table.Random(RDV.TRAINING.CFG.Stances))

                for k, v in ipairs(self:GetBodyGroups()) do
                    local STACK = v.submodels
                    local _, key = table.Random(STACK)

                    self:SetBodygroup(k, key)
                end
            end
        end)
    end
end

function ENT:Use(activator)
    if !RDV.TRAINING.NPCS[self] then return end

    local COUNT = table.Count(RDV.TRAINING.NPCS[self])

	net.Start("RDV.TRAINING.MENU")
        net.WriteUInt(COUNT, 8)

        for k, v in pairs(RDV.TRAINING.NPCS[self]) do
            local NW = k
            local ID = RDV.TRAINING.NTESTS[k]

            if !ID then net.WriteUInt(0, 1) print("FAILED TO GET ID OF QUIZ ("..k..")") continue end

            net.WriteUInt(ID, 8)
        end
	net.Send(activator)
end

function ENT:OnTakeDamage()
    return 0
end