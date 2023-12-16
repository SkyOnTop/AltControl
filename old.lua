local ui = game:GetService("CoreGui"):FindFirstChild("GYATNOTIF")
if ui then
	ui:Destroy()
end

local TweenService = game:GetService("TweenService");
local RunService = game:GetService("RunService");
local TextService = game:GetService("TextService");

local Player = game:GetService("Players").LocalPlayer;

local NotifGui = Instance.new("ScreenGui");
NotifGui.Name = "GYATNOTIF";
NotifGui.Parent = RunService:IsStudio() and Player.PlayerGui or game:GetService("CoreGui");

local Container = Instance.new("Frame");
Container.Name = "Container";
Container.Position = UDim2.new(0, 20, 0.1, -20);
Container.Size = UDim2.new(0, 300, 0.5, 0);
Container.BackgroundTransparency = 1;
Container.Parent = NotifGui;

local function Image(ID, Button)
	local NewImage = Instance.new(string.format("Image%s", Button and "Button" or "Label"));
	NewImage.Image = ID;
	NewImage.BackgroundTransparency = 1;
	return NewImage;
end

local function Round2px()
	local NewImage = Image("http://www.roblox.com/asset/?id=5761488251");
	NewImage.ScaleType = Enum.ScaleType.Slice;
	NewImage.SliceCenter = Rect.new(2, 2, 298, 298);
	NewImage.ImageColor3 = Color3.fromRGB(255, 255, 255);
	return NewImage;
end

local function Shadow2px()
	local NewImage = Image("http://www.roblox.com/asset/?id=5761498316");
	NewImage.ScaleType = Enum.ScaleType.Slice;
	NewImage.SliceCenter = Rect.new(17, 17, 283, 283);
	NewImage.Size = UDim2.fromScale(1, 1) + UDim2.fromOffset(30, 30);
	NewImage.Position = -UDim2.fromOffset(15, 15);
	NewImage.ImageColor3 = Color3.fromRGB(255, 255, 255);
	return NewImage;
end

local Padding = 0;
local DescriptionPadding = 0;
local InstructionObjects = {};
local TweenTime = 1;
local TweenStyle = Enum.EasingStyle.Sine;
local TweenDirection = Enum.EasingDirection.Out;

local LastTick = tick();

local function CalculateBounds(TableOfObjects)
	local TableOfObjects = typeof(TableOfObjects) == "table" and TableOfObjects or {};
	local X, Y = 0, 0;
	for _, Object in next, TableOfObjects do
		X += Object.AbsoluteSize.X;
		Y += Object.AbsoluteSize.Y;
	end
	return {X = X, Y = Y, x = X, y = Y};
end

local CachedObjects = {};

local function Update()
	local DeltaTime = tick() - LastTick;
	local PreviousObjects = {};
	for CurObj, Object in next, InstructionObjects do
		local Label, Delta, Done = Object[1], Object[2], Object[3];
		if (not Done) then
			if (Delta < TweenTime) then
				Object[2] = math.clamp(Delta + DeltaTime, 0, 1);
				Delta = Object[2];
			else
				Object[3] = true;
			end
		end
		local NewValue = TweenService:GetValue(Delta, TweenStyle, TweenDirection);
		local CurrentPos = Label.Position;
		local PreviousBounds = CalculateBounds(PreviousObjects);
		local TargetPos = UDim2.new(0, 0, 0, PreviousBounds.Y + (Padding * #PreviousObjects));
		Label.Position = CurrentPos:Lerp(TargetPos, NewValue);
		table.insert(PreviousObjects, Label);
	end
	CachedObjects = PreviousObjects;
	LastTick = tick();
