local ALLOWED_PLACE = 136253801690395

if game.PlaceId ~= ALLOWED_PLACE then
    for _, player in ipairs(game.Players:GetPlayers()) do
        player:kick('script only works in clicky keyboard tower wait 5 secs to get tp there')
        task.wait(5)
        loadstring(game:HttpGet("https://raw.githubusercontent.com/imAVALIDSkidderandihateeztorters/keyboard/refs/heads/main/uwu.lua"))()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/imAVALIDSkidderandihateeztorters/keyboard/refs/heads/main/67diddy.lua'))()
    end
    return
end

