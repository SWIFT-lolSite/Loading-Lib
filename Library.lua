local lib ={}
local _New_ = Instance.new;

local SWIFT_LoadingLibrary = _New_("ScreenGui", game.CoreGui);
SWIFT_LoadingLibrary.Name = "SWIFT|LoadingLibrary";

function lib:Load(e)
	e = e or {}

	e.InterTime = e.InterTime or 0.1
	
	local loading = true
	
	local value = 0
	e.Script = e.Script or function()end
	
local Loader = _New_("Frame", SWIFT_LoadingLibrary);
Loader.AnchorPoint = Vector2.new(0.5, 0.5);
Loader.BackgroundColor3 = Color3.fromRGB(36.00000165402889, 36.00000165402889, 36.00000165402889);
Loader.BorderColor3 = Color3.fromRGB(0, 0, 0);
Loader.BorderSizePixel = 0;
Loader.Name = "Loader";
Loader.Position = UDim2.new(0.4996817409992218, 0, 0.5, 0);
Loader.Size = UDim2.new(0, 302, 0, 302);

local Floating_Objects = _New_("Frame", Loader);
Floating_Objects.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
Floating_Objects.BackgroundTransparency = 1;
Floating_Objects.BorderColor3 = Color3.fromRGB(0, 0, 0);
Floating_Objects.BorderSizePixel = 0;
Floating_Objects.Name = "Floating Objects";
Floating_Objects.Size = UDim2.new(1, 0, 1, 0);

local Script_Name = _New_("TextLabel", Loader);
Script_Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
Script_Name.BackgroundTransparency = 1;
Script_Name.BorderColor3 = Color3.fromRGB(0, 0, 0);
Script_Name.BorderSizePixel = 0;
Script_Name.Name = "Script Name";
Script_Name.Size = UDim2.new(0, 109, 0, 29);
Script_Name.ZIndex = 7;
Script_Name.Font = Enum.Font.Unknown;
Script_Name.FontFace = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
Script_Name.Text = e.Name.."| Loader" or "SWIFT| Loader";
Script_Name.TextColor3 = Color3.fromRGB(175.00000476837158, 175.00000476837158, 175.00000476837158);
Script_Name.TextSize = 14;
Script_Name.TextXAlignment = Enum.TextXAlignment.Left;

local UIPadding = _New_("UIPadding", Script_Name);
UIPadding.PaddingLeft = UDim.new(0, 5);

local UICorner = _New_("UICorner", Loader);

local ScriptLogo = _New_("Frame", Loader);
ScriptLogo.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
ScriptLogo.BackgroundTransparency = 1;
ScriptLogo.BorderColor3 = Color3.fromRGB(0, 0, 0);
ScriptLogo.BorderSizePixel = 0;
ScriptLogo.Name = "ScriptLogo";
ScriptLogo.Size = UDim2.new(1, 0, 1, 0);

local ImageLabel = _New_("ImageLabel", ScriptLogo);
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
ImageLabel.BackgroundTransparency = 1;
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0);
ImageLabel.BorderSizePixel = 0;
ImageLabel.Position = UDim2.new(0.18543046712875366, 0, 0.23178808391094208, 0);
ImageLabel.Size = UDim2.new(0, 190, 0, 161);
	ImageLabel.Image = "rbxassetid://"..e.Image;

local Needed = _New_("TextLabel", Loader);
Needed.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
Needed.BackgroundTransparency = 1;
Needed.BorderColor3 = Color3.fromRGB(0, 0, 0);
Needed.BorderSizePixel = 0;
Needed.Name = "Needed";
Needed.Position = UDim2.new(0, 0, 0.9039735198020935, 0);
Needed.Size = UDim2.new(0, 109, 0, 29);
Needed.ZIndex = 7;
Needed.Font = Enum.Font.Unknown;
Needed.FontFace = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
Needed.Text = "Powered By SWIFT";
Needed.TextColor3 = Color3.fromRGB(71.00000336766243, 71.00000336766243, 71.00000336766243);
Needed.TextXAlignment = Enum.TextXAlignment.Left;
Needed.TextYAlignment = Enum.TextYAlignment.Bottom;

local UIPadding_0 = _New_("UIPadding", Needed);
UIPadding_0.PaddingBottom = UDim.new(0, 4);
UIPadding_0.PaddingLeft = UDim.new(0, 5);

local Progress_Items = _New_("Frame", Loader);
Progress_Items.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
Progress_Items.BackgroundTransparency = 1;
Progress_Items.BorderColor3 = Color3.fromRGB(0, 0, 0);
Progress_Items.BorderSizePixel = 0;
Progress_Items.Name = "Progress Items";
Progress_Items.Size = UDim2.new(1, 0, 1, 0);

local Loading_Text = _New_("TextLabel", Progress_Items);
Loading_Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
Loading_Text.BackgroundTransparency = 1;
Loading_Text.BorderColor3 = Color3.fromRGB(0, 0, 0);
Loading_Text.BorderSizePixel = 0;
Loading_Text.Name = "Loading Text";
Loading_Text.Position = UDim2.new(0.16887417435646057, 0, 0.6788079738616943, 0);
Loading_Text.Size = UDim2.new(0, 200, 0, 32);
Loading_Text.Font = Enum.Font.Unknown;
Loading_Text.FontFace = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
Loading_Text.Text = "Loading..";
Loading_Text.TextColor3 = Color3.fromRGB(144.00000661611557, 144.00000661611557, 144.00000661611557);
Loading_Text.TextSize = 14;

local Percent = _New_("TextLabel", Progress_Items);
Percent.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
Percent.BackgroundTransparency = 1;
Percent.BorderColor3 = Color3.fromRGB(0, 0, 0);
Percent.BorderSizePixel = 0;
Percent.Name = "Percent";
Percent.Position = UDim2.new(0.37748345732688904, 0, 0.7019867300987244, 0);
Percent.Size = UDim2.new(0, 75, 0, 43);
Percent.Font = Enum.Font.Unknown;
Percent.FontFace = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
Percent.Text = "0%";
Percent.TextColor3 = Color3.fromRGB(144.00000661611557, 144.00000661611557, 144.00000661611557);
	Percent.TextSize = 14;
	
	while value < 100 do 
		wait(e.InterTime)
		value = value +1
		Percent.Text = value.."%"
		if value == 100 then
			print("Finished! Using SWIFT | Loader")
			Loading_Text.Text = "Finished!";

			wait(0.4)
				SWIFT_LoadingLibrary:Destroy()
		end
	end
	
	e.Script()
	
end

return lib;
