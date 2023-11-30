
local meta = FindMetaTable( "Player" )

-- Return if there's nothing to add on to
if ( not meta ) then return end

g_SBoxObjects = {}

function meta:CheckLimit( str )

	-- No limits in single player
	if ( game.SinglePlayer() ) then return true end

	local c = cvars.Number( "sbox_max" .. str, 0 )
	local count = self:GetCount( str )

	local ret = hook.Run( "PlayerCheckLimit", self, str, count, c )
	if ( ret ~= nil ) then
		if ( not ret and SERVER ) then self:LimitHit( str ) end
		return ret
	end

	if ( c < 0 ) then return true end

	if ( count > c - 1 ) then
		if ( SERVER ) then self:LimitHit( str ) end
		return false
	end

	return true

end

function meta:GetCount( str, minus )

	if ( CLIENT ) then
		return self:GetNWInt( "Count." .. str, 0 )
	end

	minus = minus or 0

	if ( not self:IsValid() ) then return end

	local key = self:UniqueID()
	local tab = g_SBoxObjects[ key ]

	if ( not tab or not tab[ str ] ) then

		self:SetNWInt( "Count." .. str, 0 )
		return 0

	end

	local c = 0

	for k, v in pairs( tab[ str ] ) do

		if ( IsValid( v ) and not v:IsMarkedForDeletion() ) then
			c = c + 1
		else
			tab[ str ][ k ] = nil
		end

	end

	self:SetNWInt( "Count." .. str, math.max( c - minus, 0 ) )

	return c

end

function meta:AddCount( str, ent )

	if ( SERVER ) then

		local key = self:UniqueID()
		g_SBoxObjects[ key ] = g_SBoxObjects[ key ] or {}
		g_SBoxObjects[ key ][ str ] = g_SBoxObjects[ key ][ str ] or {}

		local tab = g_SBoxObjects[ key ][ str ]

		table.insert( tab, ent )

		-- Update count (for client)
		self:GetCount( str )

		ent:CallOnRemove( "GetCountUpdate", function( ent, ply, str ) ply:GetCount( str ) end, self, str )

	end

end

function meta:LimitHit( str )

	self:SendLua( string.format( 'hook.Run("LimitHit",%q)', str ) )

end

function meta:AddCleanup( type, ent )

	cleanup.Add( self, type, ent )

end

if ( SERVER ) then

	function meta:GetTool( mode )

		local wep = self:GetWeapon( "gmod_tool" )
		if ( not IsValid( wep ) ) then return nil end

		local tool = wep:GetToolObject( mode )
		if ( not tool ) then return nil end

		return tool

	end

	function meta:SendHint( str, delay )

		self.Hints = self.Hints or {}
		if ( self.Hints[ str ] ) then return end

		self:SendLua( string.format( 'hook.Run("AddHint",%q,%d)', str, delay ) )
		self.Hints[ str ] = true

	end

	function meta:SuppressHint( str )

		self.Hints = self.Hints or {}
		if ( self.Hints[ str ] ) then return end

		self:SendLua( string.format( 'hook.Run("SuppressHint",%q)', str ) )
		self.Hints[ str ] = true

	end

else

	function meta:GetTool( mode )

		local wep
		for _, ent in ipairs( ents.FindByClass( "gmod_tool" ) ) do
			if ( ent:GetOwner() == self ) then wep = ent break end
		end
		if ( not IsValid( wep ) or not wep.GetToolObject ) then return nil end

		local tool = wep:GetToolObject( mode )
		if ( not tool ) then return nil end

		return tool

	end

end