timer.Simple(0, function()    
    NCS_LOADOUTS = NCS_LOADOUTS or {
        CONFIG = {},
        teamrestrictcerts = {},
        LIST = {},
        CERTS = {}, 
        CharSystems = {},
        P_DATA = {},
        VENDORS = {},
    }

    local rootDir = "ncs_loadouts_system"

    local function AddFile(File, dir)
        local fileSide = string.lower(string.Left(File , 3))

        if SERVER and fileSide == "sv_" then
            include(dir..File)
        elseif fileSide == "sh_" then
            if SERVER then 
                AddCSLuaFile(dir..File)
            end
            include(dir..File)
        elseif fileSide == "cl_" then
            if SERVER then 
                AddCSLuaFile(dir..File)
            elseif CLIENT then
                include(dir..File)
            end
        end
    end

    local function IncludeDir(dir)
        dir = dir .. "/"
        local File, Directory = file.Find(dir.."*", "LUA")

        for k, v in ipairs(File) do
            if string.EndsWith(v, ".lua") then
                AddFile(v, dir)
            end
        end
        
        for k, v in ipairs(Directory) do
            IncludeDir(dir..v)
        end

    end
    IncludeDir(rootDir)

    if CAMI then
        CAMI.RegisterPrivilege({
            Name = "[NCS] Loadouts",
            MinAccess = "superadmin"
        })
    end

    if SERVER then
        NCS_LOADOUTS.MysqlConnect()
    end

    hook.Run("NCS_LOADOUTS_AddonLoaded")
end)