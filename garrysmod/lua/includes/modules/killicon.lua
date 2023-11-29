
-- DO NOT EDIT THIS FILE!

-- Globals that we need 
local surface	= surface
local Msg		= Msg
local Color		= Color


--[[---------------------------------------------------------
   Name: killicon
   Desc: Stores and serves killicons for deathnotice
-----------------------------------------------------------]]
module("killicon")

local Icons = {}
local TYPE_FONT 	= 0
local TYPE_TEXTURE 	= 1

function AddFont( name, font, character, color )

	Icons[name] = {}
	Icons[name].type 		= TYPE_FONT
	Icons[name].font 		= font
	Icons[name].character 	= character
	Icons[name].color 		= color

end

function Add( name, material, color )

	Icons[name] = {}
	Icons[name].type 		= TYPE_TEXTURE
	Icons[name].texture		= surface.GetTextureID( material )
	Icons[name].color 		= color

end

function AddAlias( name, alias )

	Icons[name] = Icons[alias]

end

function Exists( name )

	return Icons[name] ~= nil

end

function GetSize( name )

	if (!Icons[name]) then 
		Msg("Warning: killicon not found '"..name.."'\n")
		Icons[name] = Icons["default"]
	end
	
	local t = Icons[name]
	
	-- Cached
	if (t.size) then
		return t.size.w, t.size.h
	end
	
	local w, h = 0
	
	if ( t.type == TYPE_FONT ) then
	
		surface.SetFont( t.font )
		w, h = surface.GetTextSize( t.character )
		
	end
	
	if ( t.type == TYPE_TEXTURE ) then
	
		-- Estimate the size from the size of the font
		surface.SetFont( "HL2MPTypeDeath" )
		w, h = surface.GetTextSize( "0" )
		
		-- Fudge it slightly
		h = h * 0.75
		
		-- Make h/w 1:1
		local tw, th = surface.GetTextureSize( t.texture )
		w = tw * (h / th)
		
	end
	
	t.size = {}
	t.size.w = w or 32
	t.size.h = h or 32
	
	return w, h

end

function Draw( x, y, name, alpha )

	alpha = alpha or 255

	if (!Icons[name]) then 
		Msg("Warning: killicon not found '"..name.."'\n")
		Icons[name] = Icons["default"]
	end
	
	local t = Icons[name]
	
	if ( !t.size ) then	GetSize( name )	end
	
	local w = t.size.w
	local h = t.size.h
	
	x = x - w * 0.5
	
	
	if ( t.type == TYPE_FONT ) then
	
		y = y - h * 0.1
		surface.SetTextPos( x, y )
		surface.SetFont( t.font )
		surface.SetTextColor( t.color.r, t.color.g, t.color.b, alpha )
		surface.DrawText( t.character )

	end
	
	if ( t.type == TYPE_TEXTURE ) then
	
		y = y - h * 0.3
		surface.SetTexture( t.texture )
		surface.SetDrawColor( t.color.r, t.color.g, t.color.b, alpha )
		surface.DrawTexturedRect( x, y, w, h )

	end
	
end

--AddFont( "default", "HL2MPTypeDeath", "6", Color( 255, 240, 10, 255 ) )

local Color_Icon = Color( 255, 80, 0, 255 ) 

Add( "default", "HUD/killicons/default", Color_Icon )
AddAlias( "suicide", "default" )
