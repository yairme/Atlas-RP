local CURRENCY = PROJECT0.FUNC.CreateCurrency( "mtokens" )
CURRENCY:SetTitle( "mTokens" )

CURRENCY:SetInstalledFunction( function()
    return tobool( mTokens )
end )

CURRENCY:SetAddCurrency( function( ply, amount )
    mTokens.AddPlayerTokens( ply, amount )
end )

CURRENCY:SetTakeCurrency( function( ply, amount )
    mTokens.TakePlayerTokens( ply, amount )
end )

CURRENCY:SetGetCurrency( function( ply )
    return ((SERVER and mTokens.GetPlayerTokens(ply)) or (CLIENT and mTokens.PlayerTokens)) or 0
end )

CURRENCY:SetFormatCurrency( function( amount )
    return string.Comma( amount ) .. " Tokens"
end )

CURRENCY:Register()