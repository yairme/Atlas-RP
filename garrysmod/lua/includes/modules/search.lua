
module( "search", package.seeall )

local Providers = {}

function AddProvider( func, id )

	local prov = {
		func = func,
	}

	if ( id ) then
		Providers[ id ] = prov
	else
		table.insert( Providers, prov )
	end

end

function GetResults( str, types, maxResults )

	if ( not maxResults or maxResults < 1 ) then maxResults = 1024 end

	local str = str:lower()
	if ( str == "" ) then return {} end

	local results = {}

	for k, v in pairs( Providers ) do
		if ( isstring( types ) ) then
			if ( types ~= k ) then goto continue end
		elseif ( istable( types ) ) then
			if ( not table.HasValue( types, k ) ) then goto continue end
		end

		local tbl = v.func( str )
		for _, e in pairs( tbl ) do
			table.insert( results, e )
		end

		if ( #results >= maxResults ) then break end

		::continue::
	end

	-- Todo. Sort, weighted?

	return results

end