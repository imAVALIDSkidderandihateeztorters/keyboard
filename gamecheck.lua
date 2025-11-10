local ALLOWED_PLACE = 136253801690395

if game.PlaceId ~= ALLOWED_PLACE then
    for _, player in ipairs(game.Players:GetPlayers()) do
        player:kick('script only works in clicky keyboard tower')
    end
    return
end

