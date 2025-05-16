local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:Create({
	Name = "Joke Kick",
	Icon = "rbxassetid://1037097678", -- Ícone de um sapato chutando (opcional)
	Color = Color3.fromRGB(100, 80, 120),
	Sizable = false
})

local Tab = Window:CreateTab("Kick", "rbxassetid://...") -- Ícone da aba (opcional)

local ReasonTextBox = Tab:CreateTextBox({
	Name = "Motivo do Kick:",
	Placeholder = "Digite o motivo...",
	Callback = function(Text)
		-- O motivo será capturado quando o botão de kick for clicado
	end,
})

Tab:CreateButton({
	Name = "Dar o 'Kick'!",
	Callback = function()
		local reason = ReasonTextBox.Text
		if reason == "" then
			reason = "ê porque voce ê nigger"
		end
		game.Players.LocalPlayer:Kick(reason)
	end,
})

Window:Show()
