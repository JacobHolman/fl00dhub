local CC = Instance.new("ScreenGui")
local FC = Instance.new("TextLabel")

CC.Name = "CC"
CC.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
CC.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

FC.Name = "FC"
FC.Parent = CC
FC.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FC.BackgroundTransparency = 1.000
FC.Position = UDim2.new(0, 0, 0.965631902, 0)
FC.Size = UDim2.new(0, 252, 0, 31)
FC.Font = Enum.Font.RobotoCondensed
FC.Text = "Fl00d Console | Jailbreak"
FC.TextSize = 27.000

while true do
	for i=0, 1, 1 / 300 do              
		FC.TextColor3 = Color3.fromHSV(i, 1, 1);
		wait(0)
	end;
end