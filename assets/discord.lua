if isfile and writefile and typeof(isfile) == 'function' and typeof(writefile) == 'function' then
	if not isfile('PromptedDiscordFl00d1.txt') then
		writefile('PromptedDiscordFl00d1.txt', game:GetService('HttpService'):JSONEncode('Checked.'))
		local Module = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Discord%20Inviter/Source.lua"))()
		Module.Prompt({
			invite = "https://discord.gg/62yvB3ebZF",
			name = "Project Fl00d",
		})
	end
end -- to get members into the discord server
