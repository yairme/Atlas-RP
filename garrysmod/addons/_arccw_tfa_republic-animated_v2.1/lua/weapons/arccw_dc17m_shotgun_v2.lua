AddCSLuaFile()

SWEP.Base = "arccw_meeks_sw_base"
SWEP.Spawnable = true
SWEP.Category = "[ ArcCW ] Republic TFA Weapons - V2"
SWEP.Credits = { Author1 = "cat"}
SWEP.PrintName = "DC-17m Shotgun"
SWEP.Trivia_Class = "Blaster Rifle"
SWEP.Trivia_Desc = "High tech DC-17m Shotgun, preffered for long-range combat and general allround usage."
SWEP.Trivia_Manufacturer = "BlasTech Industries"
SWEP.Trivia_Calibre = "Medium Density Bolt"
SWEP.Trivia_Mechanism = "Energized Compressed Tibanna"
SWEP.Trivia_Country = "GAR"
SWEP.Trivia_Year = 2020

SWEP.Slot = 3

SWEP.UseHands = true

SWEP.ViewModel = "models/meeks/viewmodels/c_dc17m_shotgun.mdl"
SWEP.WorldModel = "models/meeks/worldmodels/w_DC-17m_shotgun.mdl"
SWEP.ViewModelFOV = 70
SWEP.HideViewmodel = false
SWEP.WorldModelOffset = {
    pos = Vector(-26, 11, -4),
    ang = Angle(170, 180, 0),
    bone = "ValveBiped.Bip01_R_Hand",
}

SWEP.IconOverride = "materials/entities/rw_sw_dc17m_shotgun.png"
SWEP.NoHideLeftHandInCustomization = false
SWEP.DefaultBodygroups = "0310000000"

SWEP.Damage = 35
SWEP.RangeMin = 23
SWEP.DamageMin = 19
SWEP.Range = 50
SWEP.Penetration = 1
SWEP.DamageType = DMG_BUCKSHOT
SWEP.MuzzleVelocity = 400



SWEP.TraceNum = 1
SWEP.PhysTracerProfile = 1

SWEP.TracerNum = 1
SWEP.Tracer = "tfa_tracer_blue"
SWEP.TracerCol = Color(0, 0, 255)
SWEP.HullSize = 1

SWEP.ChamberSize = 0
SWEP.Primary.ClipSize = 5

SWEP.Recoil = 0.5
SWEP.RecoilSide = 0.2
SWEP.RecoilRise = 0.18

SWEP.Delay = 60 / 160
SWEP.Num = 6
SWEP.Firemodes = {
    {
        Mode = 1
    },
    {
        Mode = 0
    },         
}

SWEP.AccuracyMOA = 30 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 410 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 100

----AMMO / stuff----

SWEP.Primary.Ammo = "ar2"

SWEP.ShootVol = 100
SWEP.ShootPitch = 100


SWEP.DistantShootSound = "shared/SW01_Weapons_LongBlasters_Shared_Corebass_Close_VAR_01 0 0 0.ogg"
SWEP.ShootSound = "dc17m/dc17mshotgun.wav"
SWEP.ShootSoundSilenced = "w/dc19.wav"

SWEP.NoFlash = nil -- disable light flash
SWEP.MuzzleEffect = "wpn_muzzleflash_dc17"
SWEP.FastMuzzleEffect = nil
SWEP.GMMuzzleEffect = false -- Use Gmod muzzle effects rather than particle effects

SWEP.MuzzleEffectAttachment = "1" -- which attachment to put the muzzle on
SWEP.ProceduralViewBobAttachment = 1 -- attachment on which coolview is affected by, default is muzzleeffect
SWEP.MuzzleFlashColor = Color(0, 0, 250)

SWEP.IronSightStruct = {
    Pos = Vector(-6.53, -8, 0.9),
    Ang = Angle(0, 0, 0),
     Magnification = 1,
     SwitchToSound = "zoom_in/gunfoley_zoomin_blasterheavy_01.mp3",
     ViewModelFOV = 60,
}
SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

SWEP.ActivePos = Vector(2.5, -2, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.SprintPos = Vector(3, 0, 0)
SWEP.SprintAng = Angle(-10, 40, -40)

SWEP.HolsterPos = Vector(0.2, -1, 2)
SWEP.HolsterAng = Vector(-15, 30, -15)

SWEP.CustomizePos = Vector(20.824, -10, 3.897)
SWEP.CustomizeAng = Angle(12.149, 50.547, 45)

SWEP.DefaultElements = {"", ""}

SWEP.AttachmentElements = {
}

--SWEP.Attachments 
SWEP.Attachments = {
    [1] = {
        PrintName = "Optic", -- print name
        DefaultAttName = "Iron Sights", -- used to display the "no attachment" text
        Slot = "optic",
        Bone = "optic", -- relevant bone any attachments wwill be mostly referring to
        Offset = {
            vpos = Vector(0.05, 0.4, 3.15),
            vang = Angle(90, 0, -90),
            wpos = Vector(7, 1.5, -7),
            wang = Angle(-10, 0, 180)
        },
        -- CorrectiveAng = Angle(-2.4, -0, 0)
    },
    [2] = {
        PrintName = "Foregrip", -- print name
        DefaultAttName = "No Attachment", -- used to display the "no attachment" text
        Slot = {"foregrip"},
        Bone = "optic", -- relevant bone any attachments wwill be mostly referring to
        Offset = {
            vpos = Vector(-0.2, 4.8, 6.5),
            vang = Angle(90, 0, -90),
            wpos = Vector(10, 1.5, -3),
            wang = Angle(170, 180, 0),
        },
    },          
    [3] = {
        PrintName = "Tactical", -- print name
        DefaultAttName = "No Attachment", -- used to display the "no attachment" text
        Slot = {"tactical","tac_pistol","tac"},
        Bone = "optic", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(1.8, 0.75, 12),
            vang = Angle(90, 0, 40),
            wpos = Vector(16, 3, -8),
            wang = Angle(-10, 0, -60)
        },
    },
    [4] = {
        PrintName = "Muzzle", -- print name
        DefaultAttName = "No Attachment", -- used to display the "no attachment" text
        Slot = {"muzzle","dlt19_muzzle", "dc15a_muzzle", "cr2_muzzle", "cr2c_muzzle", "stealth_muzzle", "b1120_muzzle"},
        Bone = "optic", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0.05, 1.15, 19.45),
            vang = Angle(90, 0, -90),
            wpos = Vector(22.1, 1.51, -8.7),
            wang = Angle(-10, 0, -90)
        },
    },    
    [5] = {
        PrintName = "Magazine", -- print name
        DefaultAttName = "No Attachment", -- used to display the "no attachment" text
        Slot = {},
        Bone = "optic", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0.3, 2.3, -3),
            vang = Angle(0, 0, 0),
        },
    },         
    [6] = {
        PrintName = "Energization", -- print name
        DefaultAttName = "Standard Energization", -- used to display the "no attachment" text
        Slot = "ammo",
    },
    [7] = {
        PrintName = "Training/Perk", -- print name
        DefaultAttName = "None", -- used to display the "no attachment" text
        Slot = "perk",
    },
    [8] = {
        PrintName = "Charms", -- print name
        DefaultAttName = "No Charm", -- used to display the "no attachment" text
        Slot = {"charm"},
        Bone = "optic", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(1.4, 1.6, 2),
            vang = Angle(90, 0, -70),
            wpos = Vector(6, 3, -5),
            wang = Angle(-10 , 0, 180)
        },
    },    
    [9] = {
        PrintName = "Killcounter", -- print name
        DefaultAttName = "None", -- used to display the "no attachment" text
        Slot = {"killcounter"},
        Bone = "optic", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(1, 2, 2),
            vang = Angle(90, 0, -90),
        },
    },   
    [10] = {
        PrintName = "Grip", -- print name
        DefaultAttName = "None", -- used to display the "no attachment" text
        Slot = "grip",
    },    
    [11] = {
        PrintName = "Internal Modifications", -- print name
        DefaultAttName = "None", -- used to display the "no attachment" text
        Slot = "uc_fg",
    },   
}
SWEP.Animations = {
    ["idle"] = {
        Source = "idle"
    },
    ["fire"] = {
        Source = "Fire"
    },
    ["draw"] = {
        Source = "Draw",
        SoundTable = {
            {
                s = "draw/gunfoley_blaster_draw_var_04.mp3", -- sound; can be string or table
                p = 100, -- pitch
                v = 75, -- volume
                t = 0, -- time at which to play relative to Animations.Time
                c = CHAN_ITEM, -- channel to play the sound
            },
        }
    },
    ["holster"] = {
        Source = "Holster",
        SoundTable = {
            {
                s = "draw/gunfoley_blaster_draw_var_08.mp3", -- sound; can be string or table
                p = 100, -- pitch
                v = 75, -- volume
                t = 0, -- time at which to play relative to Animations.Time
                c = CHAN_ITEM, -- channel to play the sound
            },
        }
    },
    ["reload"] = {
        Source = "Reload", 
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        LHIK = true,
        SoundTable = {
            --{s = "viper/weapons/sierra552/wfoly_ar_sierra552_reload_xmag_fast_empty_end.ogg", t = 20 / 60},
            {s = "dc17m/reload/SW02_Weapons_Overheat_ManualCooling_VAR_04 0 0 0.ogg", v = 10 , t = 23 / 60},
            {s = "dc17m/reload/magin.ogg", t = 115 / 60},
            {s = "dc17m/reload/maghit.ogg", t = 132 / 60},
            {s = "dc17m/reload/SCIMisc_Ammo Replenish_01.ogg", t = 139 / 60} --s sound file
        },
    },
}