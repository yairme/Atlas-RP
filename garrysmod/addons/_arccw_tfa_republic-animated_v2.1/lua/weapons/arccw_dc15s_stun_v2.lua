AddCSLuaFile()
SWEP.Base = "arccw_meeks_sw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "[ ArcCW ] Republic TFA Weapons - V2" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "DC-15s (Stun)"
SWEP.Trivia_Class = "Modular Blaster"
SWEP.Trivia_Desc = "High tech verstile modular blaster base, suited for allround usage."
SWEP.Trivia_Manufacturer = "BlasTech Industries"
SWEP.Trivia_Calibre = "Medium Density"
SWEP.Trivia_Mechanism = "Energized Compressed Tibanna"
SWEP.Trivia_Country = "GAR"

SWEP.ViewModel = "models/meeks/c_dc15s_meek.mdl"
SWEP.WorldModel = "models/meeks/worldmodels/w_dc15s_v2.mdl"
SWEP.IconOverride = "materials/entities/rw_sw_stun_dc15s.png"
SWEP.ViewModelFOV = 70

SWEP.DefaultBodygroups = "111"
SWEP.DefaultWMBodygroups = "111"
SWEP.DefaultSkin = 0
SWEP.DefaultWMSkin = 0

SWEP.NoHideLeftHandInCustomization = false

SWEP.Damage = 27
SWEP.DamageMin = 14 -- damage done at maximum range
SWEP.DamageRand = 0 -- damage will vary randomly each shot by this fraction
SWEP.RangeMin = 100 -- how far bullets will retain their maximum damage for
SWEP.Range = 300 -- in METRES
SWEP.Penetration = 1
SWEP.DamageType = DMG_BULLET
SWEP.DamageTypeHandled = false -- set to true to have the base not do anything with damage types
-- this includes: igniting if type has DMG_BURN; adding DMG_AIRBOAT when hitting helicopter; adding DMG_BULLET to DMG_BUCKSHOT

SWEP.MuzzleVelocity = 400 -- projectile muzzle velocity in m/s

SWEP.AlwaysPhysBullet = false
SWEP.NeverPhysBullet = false
SWEP.PhysTracerProfile = 3 -- color for phys tracer.

SWEP.TracerNum = 1 -- tracer every X
SWEP.TracerFinalMag = 0 -- the last X bullets in a magazine are all tracers
SWEP.Tracer = "tfa_tracer_blue" -- override tracer (hitscan) effect
SWEP.TracerCol = Color(0, 47, 255)
SWEP.HullSize = 2 -- HullSize used by FireBullets

SWEP.ChamberSize = 0 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 20 -- DefaultClip is automatically set.

SWEP.AmmoPerShot = 1

SWEP.ReloadInSights = false
SWEP.ReloadInSights_CloseIn = 0.25
SWEP.ReloadInSights_FOVMult = 0.875
SWEP.LockSightsInReload = false

SWEP.Recoil = 0.5
SWEP.RecoilSide = 0.15
SWEP.RecoilRise = 0.53
SWEP.VisualRecoilMult = 2
SWEP.RecoilPunch = 1.4
SWEP.RecoilPunchBackMax = 0.9

SWEP.RecoilDirection = Angle(1.1, 0, 0)
SWEP.RecoilDirectionSide = Angle(0, 1.1, 0)

SWEP.Delay = 60 / 330 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.
SWEP.Firemode = 2 -- 0: safe, 1: semi, 2: auto, negative: burst
SWEP.Firemodes = {
	{
		Mode = 2,
   	},
    {
		Mode = 1,
    },
	{
		Mode = 0,
   	}
}

SWEP.NotForNPCS = true
SWEP.NPCWeaponType = nil -- string or table, the NPC weapons for this gun to replace

SWEP.AccuracyMOA = 5 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 410 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 65 -- inaccuracy added by moving. Applies in sights as well! Walking speed is considered as "maximum".
SWEP.SightsDispersion = 130 -- dispersion that remains even in sights
SWEP.JumpDispersion = 200 -- dispersion penalty when in the air

SWEP.ShootWhileSprint = false

SWEP.Primary.Ammo = "ar2" -- what ammo type the gun uses
SWEP.MagID = "mpk1" -- the magazine pool this gun draws from

SWEP.ShootVol = 125 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound
SWEP.ShootPitchVariation = 0.05

SWEP.ShootSound = "dc15s/blasters_dc15_laser_close_var_02.mp3"
SWEP.ShootSoundSilenced = "w/dc19.wav"
SWEP.FiremodeSound = "weapons/arccw/firemode.wav"
SWEP.MeleeSwingSound = "weapons/arccw/melee_lift.wav"
SWEP.MeleeMissSound = "weapons/arccw/melee_miss.wav"
SWEP.MeleeHitSound = "weapons/arccw/melee_hitworld.wav"
SWEP.MeleeHitNPCSound = "weapons/arccw/melee_hitbody.wav"


SWEP.NoFlash = nil -- disable light flash
SWEP.MuzzleEffect = "wpn_muzzleflash_dc17"
SWEP.FastMuzzleEffect = nil
SWEP.GMMuzzleEffect = false -- Use Gmod muzzle effects rather than particle effects

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.ProceduralViewBobAttachment = 1 -- attachment on which coolview is affected by, default is muzzleeffect
SWEP.MuzzleFlashColor = Color(0, 102, 255)

SWEP.SpeedMult = 0.9
SWEP.SightedSpeedMult = 0.75
SWEP.ShootSpeedMult = 1

SWEP.IronSightStruct = {
    Pos = Vector(-2.85, -2, 2.25),
    Ang = Angle(0, 0, -0.5),
    Midpoint = { -- Where the gun should be at the middle of it's irons
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
    },
    Magnification = 1,
    CrosshairInSights = false,
}


SWEP.SightTime = 0.13
SWEP.SprintTime = 0
-- If Malfunction is enabled, the gun has a random chance to be jammed
-- after the gun is jammed, it won't fire unless reload is pressed, which plays the "unjam" animation
-- if no "unjam", "fix", or "cycle" animations exist, the weapon will reload instead
SWEP.Malfunction = false
SWEP.MalfunctionJam = true -- After a malfunction happens, the gun will dryfire until reload is pressed. If unset, instead plays animation right after.
SWEP.MalfunctionTakeRound = true -- When malfunctioning, a bullet is consumed.
SWEP.MalfunctionWait = 0.5 -- The amount of time to wait before playing malfunction animation (or can reload)
SWEP.MalfunctionMean = nil -- The mean number of shots between malfunctions, will be autocalculated if nil
SWEP.MalfunctionVariance = 0.25 -- The fraction of mean for variance. e.g. 0.2 means 20% variance
SWEP.MalfunctionSound = "weapons/arccw/malfunction.wav"

SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "ar2"
SWEP.HoldtypeCustomize = "slam"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.CanBash = true
SWEP.MeleeDamage = 25
SWEP.MeleeRange = 16
SWEP.MeleeDamageType = DMG_CLUB
SWEP.MeleeTime = 0.5
SWEP.MeleeGesture = nil
SWEP.MeleeAttackTime = 0.2

SWEP.SprintPos = Vector(6, -4, 0)
SWEP.SprintAng = Angle(-16.524, 60, -11.046)

SWEP.BashPreparePos = Vector(2.187, -4.117, -7.14)
SWEP.BashPrepareAng = Angle(32.182, -3.652, -19.039)

SWEP.BashPos = Vector(8.876, 0, 0)
SWEP.BashAng = Angle(-16.524, 70, -11.046)

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(0.532, -6, 0)
SWEP.HolsterAng = Angle(-4.633, 36.881, 0)

SWEP.BarrelOffsetSighted = Vector(0, 0, 0)
SWEP.BarrelOffsetCrouch = nil
SWEP.BarrelOffsetHip = Vector(3, 0, -3)

SWEP.CustomizePos = Vector(10.824, -7, 4.897)
SWEP.CustomizeAng = Angle(12.149, 45.547, 45)

SWEP.InBipodPos = Vector(-8, 0, -4)
SWEP.InBipodMult = Vector(2, 1, 1)

SWEP.BarrelLength = 24

SWEP.SightPlusOffset = true

SWEP.DefaultElements = {}

SWEP.AttachmentElements = {
    ["nil"] = {
        VMElements = {
            {
                Model = "models/arccw/props/e11r_scope/e11r_scope.mdl",
                Bone = "weapon",
                Scale = Vector(1, 1, 1),
                Offset = {
                    pos = Vector(0.05, -2.85, 0.8),
                    ang = Angle(-0.3, 0, -90)
                }
            }
        },
        WMElements = { -- Purely handles muzzle effect on the world model
            {
                Model = "models/hunter/plates/plate.mdl",
                Bone = "ValveBiped.Bip01_R_Hand",
                Scale = Vector(0, 0, 0),
                Offset = {
                    pos = Vector(20, 0.5, -8),
                    ang = Angle(0, 0, 0)
                },
                IsMuzzleDevice = true
            }
        }, -- change the world model to something else. Please make sure it's compatible with the last one.
    },
}


SWEP.Attachments = {
	[1] = {
		PrintName = "Optic", -- print name
		DefaultAttName = "Iron Sights", -- used to display the "no attachment" text
		Slot = "optic",
        DefaultEles = {"ironsight"},
		Bone = "DC15", -- relevant bone any attachments will be mostly referring to
		Offset = {
            vpos = Vector(0.02, -1.5, 0),
            vang = Angle(90, 0, -90),
            wpos = Vector(6, 1.5, -5),
            wang = Angle(-10, 2, 180)
        },
        NoWM = false
	},
    [2] = {
        PrintName = "Tactical", -- print name
        DefaultAttName = "No Attachment", -- used to display the "no attachment" text
        Slot = {"tactical", "tac_pistol"},
        Bone = "DC15", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(.9, -0.5, 6),
            vang = Angle(90, 0, -0),
            wpos = Vector(14, 2, -5.5),
            wang = Angle(-10, 5, -90)
        },
        NoWM = false
    },
    [3] = {
        PrintName = "Charms", -- print name
        DefaultAttName = "No Attachment", -- used to display the "no attachment" text
        Slot = {"charm"},
        Bone = "DC15", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0.9, 0, -3.5),
            vang = Angle(90, 0, -90),
            wpos = Vector(6, 1.8, -4.5),
            wang = Angle(0, 0, 180)
        },
    },
    [4] = {
        PrintName = "Foregrip", -- print name
        DefaultAttName = "No Attachment", -- used to display the "no attachment" text
        Slot = "foregrip",
        Bone = "DC15", -- relevant bone any attachments wwill be mostly referring to /
        Offset = {
            vpos = Vector(-0, 0.2, 2.5),
            vang = Angle(90, 0, -90),
            wpos = Vector(9, .5, 2),
            wang = Angle(0, 0, 180)            
        },
        SlideAmount = {
        vmin = Vector(-0, 0.2, 2),
        vmax = Vector(-0, 0.2, 6),
        wmin = Vector(14, 1, -4.5), 
        wmax = Vector(14, 1, -4.5) -- how far this attachment can slide in both directions.
        },          -- Set this to false if you want the foregrips to display on ViewModels.          
    },
    [5] = {
        PrintName = "Energization", -- print name
        DefaultAttName = "Standard Energization", -- used to display the "no attachment" text
        Slot = {"ammo", "sw_ammo"},
    },
    [6] = {
        PrintName = "Training/Perk", -- print name
        DefaultAttName = "None", -- used to display the "no attachment" text
        Slot = "perk",
    },
    [7] = {
        PrintName = "Magazine", -- print name
        DefaultAttName = "No Attachment", -- used to display the "no attachment" text
        Slot = {"dc15a_magazine_75"},
        Bone = "Magazine", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(2, 0.7, -1.6),
            vang = Angle(180, 0, 0),
            wpos = Vector(9.5, 1.5, -3.8),
            wang = Angle(80, 90, 0) 
        },
    },
    [8] = {
        PrintName = "Muzzle", -- print name
        DefaultAttName = "No Attachment", -- used to display the "no attachment" text
        Slot = {"muzzle"},
        Bone = "DC15", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0, -0.5, 11.5),
            vang = Angle(90, 0, -90),
            wpos = Vector(20, 1, -6.5),
            wang = Angle(-12, 0.5, 180) 
        },
    },                              
}

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
    },
    ["idle_sights"] = {
        Source = "neutral",
        Time = 0, -- Overwrites the duration of the animation (changes speed). Don't set to use sequence length
    },
    ["enter_sight"] = {
        Source = "neutral",
        Time = 0, -- Overwrites the duration of the animation (changes speed). Don't set to use sequence length
    },
    ["exit_sight"] = {
        Source = "neutral",
        Time = 0, -- Overwrites the duration of the animation (changes speed). Don't set to use sequence length
    },  
	["reload"] = {
        Source = "reload",
        LHIK = true,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
		SoundTable = {
	        {
				s = "dc15s/overheat_manualcooling_resetfoley_generic_var_03.mp3", -- sound; can be string or table
				p = 100, -- pitch
				v = 100, -- volume
				t = 0.1, -- time at which to play relative to Animations.Time
				c = CHAN_ITEM, -- channel to play the sound
			},
			{
				s = "dc15s/overheat_reset_var_02.mp3", -- "everfall/weapons/miscellaneous/charge/blasters_deathray_charge_start_var_04.mp3"sound; can be string or table
				p = 100, -- pitch
				v = 100, -- volume
				t = 1.1, -- time at which to play relative to Animations.Time
				c = CHAN_ITEM, -- channel to play the sound
			},
		}
    },
	["draw"] = {
        Source = "draw",
        Mult = 1.5,
        SoundTable = {
            {
                s = "dc15s/overheat_manualcooling_resetfoley_generic_var_01.mp3", -- sound; can be string or table
                p = 100, -- pitch
                v = 75, -- volume
                t = 0, -- time at which to play relative to Animations.Time
                c = CHAN_ITEM, -- channel to play the sound
            },
        }
    },
	["holster"] = {
        Source = "holster",
        SoundTable = {
            {
                s = "dc15s/gunfoley_blaster_sheathe_var_03.mp3", -- sound; can be string or table
                p = 100, -- pitch
                v = 75, -- volume
                t = 0, -- time at which to play relative to Animations.Time
                c = CHAN_ITEM, -- channel to play the sound
            },
        }
    },
}