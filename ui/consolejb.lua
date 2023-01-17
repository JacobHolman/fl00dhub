local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wally2", true))()
library.options.underlinecolor = "rainbow"
local w = library:CreateWindow('Utilities')
local e = library:CreateWindow('Teleport')
local j = library:CreateWindow('Farming')
local c = library:CreateWindow('Other')

w:Section('Top')
local t = w:Toggle('Example Toggle', {flag = "toggle1"})
local b = w:Button("Example Button", function()
   print(w.flags.toggle1)
end)
w:Section('Middle')
local old = workspace.CurrentCamera.FieldOfView
local s = c:Slider("FOV", {
   min = math.floor(workspace.CurrentCamera.FieldOfView);
   max = 120;
   flag = 'fov'
}, function(v)
   workspace.CurrentCamera.FieldOfView = v;
end)
local b2 = c:Button('Reset FOV', function()
   s:Set(old)
end)
w:Section('Bottom')

local box = w:Box('Speed', {
   flag = "ws";
   type = 'number';
}, function(new, old, enter)
   print(new, old, enter)
   game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = tonumber(new)
end)

local autoarrestBTN = j:Button('Auto Arrest', function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/getjpog/jailpoggers/main/AutoArrestInstantTP.lua"))()
end)

local autorobBTN = j:Button('Auto Rob', function()
    
end)

e:Dropdown("locations", {
   location = _G;
   flag = "locs";
   list = {
       "jewelryin";
       "jewelryout";
       'bank';
       'gas';
       'prison';
       'crimbase1';
       'crimbase2';
   }
}, function(new)
   warn(new)
   print(_G.locs)
end)