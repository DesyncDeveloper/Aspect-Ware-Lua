local Converted = {
	["_Aspect"] = Instance.new("ScreenGui");
	["_Loading"] = Instance.new("Frame");
	["_UICorner"] = Instance.new("UICorner");
	["_Left"] = Instance.new("ImageLabel");
	["_Right"] = Instance.new("ImageLabel");
	["_Label"] = Instance.new("TextLabel");
	["_Main"] = Instance.new("Frame");
	["_UICorner1"] = Instance.new("UICorner");
	["_Holder"] = Instance.new("Frame");
	["_UICorner2"] = Instance.new("UICorner");
	["_ScrollingFrame"] = Instance.new("ScrollingFrame");
	["_Dropdown"] = Instance.new("Frame");
	["_Button"] = Instance.new("TextButton");
	["_UICorner3"] = Instance.new("UICorner");
	["_Label1"] = Instance.new("TextLabel");
	["_Icon"] = Instance.new("ImageLabel");
	["_Scroll"] = Instance.new("Frame");
	["_UICorner4"] = Instance.new("UICorner");
	["_ScrollingFrame1"] = Instance.new("ScrollingFrame");
	["_1"] = Instance.new("TextButton");
	["_UICorner5"] = Instance.new("UICorner");
	["_2"] = Instance.new("TextButton");
	["_UICorner6"] = Instance.new("UICorner");
	["_4"] = Instance.new("TextButton");
	["_UICorner7"] = Instance.new("UICorner");
	["_3"] = Instance.new("TextButton");
	["_UICorner8"] = Instance.new("UICorner");
	["_5"] = Instance.new("TextButton");
	["_UICorner9"] = Instance.new("UICorner");
	["_6"] = Instance.new("TextButton");
	["_UICorner10"] = Instance.new("UICorner");
	["_7"] = Instance.new("TextButton");
	["_UICorner11"] = Instance.new("UICorner");
	["_8"] = Instance.new("TextButton");
	["_UICorner12"] = Instance.new("UICorner");
	["_9"] = Instance.new("TextButton");
	["_UICorner13"] = Instance.new("UICorner");
	["_10"] = Instance.new("TextButton");
	["_UICorner14"] = Instance.new("UICorner");
	["_UIGridLayout"] = Instance.new("UIGridLayout");
	["_TopBar"] = Instance.new("Frame");
	["_UICorner15"] = Instance.new("UICorner");
	["_Label2"] = Instance.new("TextLabel");
	["_Line"] = Instance.new("ImageLabel");
	["_UICorner16"] = Instance.new("UICorner");
	["_User"] = Instance.new("TextLabel");
	["_ProfileBackdrop"] = Instance.new("ImageLabel");
	["_UICorner17"] = Instance.new("UICorner");
	["_Profile"] = Instance.new("ImageLabel");
	["_UICorner18"] = Instance.new("UICorner");
}

-- Properties:

local Aspect_Ware = nil

function CreateScreenGui()
	local Aspect_Ware_Gui = Instance.new("ScreenGui")
	Aspect_Ware_Gui.Name = "Aspect-Ware"

	if syn then
		syn.protect_gui(Aspect_Ware_Gui)
		Aspect_Ware_Gui.Parent = game.CoreGui
	else
		Aspect_Ware_Gui.Parent = gethui() or game.CoreGui
	end

	Aspect_Ware = Aspect_Ware_Gui

	return Aspect_Ware_Gui
end

CreateScreenGui()

Converted["_Aspect"].ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Converted["_Aspect"].Name = "Aspect"
Converted["_Aspect"].Parent = Aspect_Ware

Converted["_Loading"].BackgroundColor3 = Color3.fromRGB(43.00000123679638, 43.00000123679638, 43.00000123679638)
Converted["_Loading"].BackgroundTransparency = 1
Converted["_Loading"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Loading"].BorderSizePixel = 0
Converted["_Loading"].Position = UDim2.new(0.335245073, 0, 0.283516496, 0)
Converted["_Loading"].Size = UDim2.new(0.329509914, 0, 0.431868136, 0)
Converted["_Loading"].ZIndex = 15
Converted["_Loading"].Name = "Loading"
Converted["_Loading"].Parent = Converted["_Aspect"]

Converted["_UICorner"].Parent = Converted["_Loading"]

Converted["_Left"].Image = "rbxassetid://13697744933"
Converted["_Left"].ImageTransparency = 1
Converted["_Left"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Left"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Left"].BackgroundTransparency = 1
Converted["_Left"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Left"].BorderSizePixel = 0
Converted["_Left"].Position = UDim2.new(0.508000016, -270, 0.500999987, 0)
Converted["_Left"].Size = UDim2.new(0, 64, 0, 112)
Converted["_Left"].ZIndex = 16
Converted["_Left"].Name = "Left"
Converted["_Left"].Parent = Converted["_Loading"]

Converted["_Right"].Image = "rbxassetid://13697746902"
Converted["_Right"].ImageTransparency = 1
Converted["_Right"].AnchorPoint = Vector2.new(0.5, 0.5)
Converted["_Right"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Right"].BackgroundTransparency = 1
Converted["_Right"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Right"].BorderSizePixel = 0
Converted["_Right"].Position = UDim2.new(0.344000012, 362, 0.500999987, 0)
Converted["_Right"].Size = UDim2.new(0, 64, 0, 112)
Converted["_Right"].ZIndex = 16
Converted["_Right"].Name = "Right"
Converted["_Right"].Parent = Converted["_Loading"]

Converted["_Label"].Font = Enum.Font.GothamBold
Converted["_Label"].MaxVisibleGraphemes = 40
Converted["_Label"].Text = "Welcome, Players.LocalPlayer.DisplayName"
Converted["_Label"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Label"].TextScaled = true
Converted["_Label"].TextSize = 14
Converted["_Label"].TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Label"].TextTransparency = 1
Converted["_Label"].TextWrapped = true
Converted["_Label"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Label"].BackgroundTransparency = 1
Converted["_Label"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Label"].BorderSizePixel = 0
Converted["_Label"].Position = UDim2.new(0.0938783363, 0, 0.726442456, 0)
Converted["_Label"].Size = UDim2.new(0, 513, 0, 50)
Converted["_Label"].ZIndex = 16
Converted["_Label"].AutoLocalize = false
Converted["_Label"].Name = "Label"
Converted["_Label"].Parent = Converted["_Loading"]

Converted["_Main"].BackgroundColor3 = Color3.fromRGB(43.00000123679638, 43.00000123679638, 43.00000123679638)
Converted["_Main"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Main"].BorderSizePixel = 0
Converted["_Main"].Position = UDim2.new(0.335245073, 0, 0.283516496, 0)
Converted["_Main"].Size = UDim2.new(0.329509914, 0, 0.431868136, 0)
Converted["_Main"].Name = "Main"
Converted["_Main"].Parent = Converted["_Aspect"]

Converted["_UICorner1"].Parent = Converted["_Main"]

Converted["_Holder"].BackgroundColor3 = Color3.fromRGB(65.0000037252903, 65.0000037252903, 65.0000037252903)
Converted["_Holder"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Holder"].BorderSizePixel = 0
Converted["_Holder"].Position = UDim2.new(0.0158228818, 0, 0.0254452918, 0)
Converted["_Holder"].Size = UDim2.new(0.966772139, 0, 0.949109435, 0)
Converted["_Holder"].Name = "Holder"
Converted["_Holder"].Parent = Converted["_Main"]

Converted["_UICorner2"].CornerRadius = UDim.new(0, 10)
Converted["_UICorner2"].Parent = Converted["_Holder"]

Converted["_ScrollingFrame"].ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
Converted["_ScrollingFrame"].ScrollBarThickness = 0
Converted["_ScrollingFrame"].ScrollingEnabled = false
Converted["_ScrollingFrame"].Active = true
Converted["_ScrollingFrame"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_ScrollingFrame"].BackgroundTransparency = 1
Converted["_ScrollingFrame"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_ScrollingFrame"].BorderSizePixel = 0
Converted["_ScrollingFrame"].Position = UDim2.new(0.0159999989, 0, 0.0250000302, 0)
Converted["_ScrollingFrame"].Size = UDim2.new(0.958683431, 0, 0.949000061, 0)
Converted["_ScrollingFrame"].Parent = Converted["_Main"]

Converted["_Dropdown"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Dropdown"].BackgroundTransparency = 1
Converted["_Dropdown"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Dropdown"].BorderSizePixel = 0
Converted["_Dropdown"].Position = UDim2.new(0.0114150811, 0, 0.011971578, 0)
Converted["_Dropdown"].Size = UDim2.new(0.335515589, 0, 0.0637899041, 0)
Converted["_Dropdown"].Name = "Dropdown"
Converted["_Dropdown"].Parent = Converted["_ScrollingFrame"]

Converted["_Button"].Font = Enum.Font.GothamBold
Converted["_Button"].Text = ""
Converted["_Button"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Button"].TextScaled = true
Converted["_Button"].TextSize = 14
Converted["_Button"].TextWrapped = true
Converted["_Button"].AutoButtonColor = false
Converted["_Button"].Active = false
Converted["_Button"].BackgroundColor3 = Color3.fromRGB(43.00000123679638, 43.00000123679638, 43.00000123679638)
Converted["_Button"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Button"].BorderSizePixel = 0
Converted["_Button"].Position = UDim2.new(0.0251482707, 0, 0.0218946654, 0)
Converted["_Button"].Size = UDim2.new(0.947754204, 0, 0.948616028, 0)
Converted["_Button"].ZIndex = 4
Converted["_Button"].Name = "Button"
Converted["_Button"].Parent = Converted["_Dropdown"]

Converted["_UICorner3"].CornerRadius = UDim.new(0, 10)
Converted["_UICorner3"].Parent = Converted["_Button"]

Converted["_Label1"].Font = Enum.Font.GothamBold
Converted["_Label1"].Text = "Select Player"
Converted["_Label1"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Label1"].TextScaled = true
Converted["_Label1"].TextSize = 14
Converted["_Label1"].TextWrapped = true
Converted["_Label1"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_Label1"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Label1"].BackgroundTransparency = 1
Converted["_Label1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Label1"].BorderSizePixel = 0
Converted["_Label1"].Position = UDim2.new(0.0411756411, 0, 0.172502652, 0)
Converted["_Label1"].Size = UDim2.new(0.725720704, 0, 0.61608088, 0)
Converted["_Label1"].Name = "Label"
Converted["_Label1"].Parent = Converted["_Button"]

Converted["_Icon"].Image = "rbxassetid://14194411525"
Converted["_Icon"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Icon"].BackgroundTransparency = 1
Converted["_Icon"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Icon"].BorderSizePixel = 0
Converted["_Icon"].Position = UDim2.new(0.808071911, 0, 0.123216182, 0)
Converted["_Icon"].Size = UDim2.new(0.144114748, 0, 0.71465385, 0)
Converted["_Icon"].Name = "Icon"
Converted["_Icon"].Parent = Converted["_Button"]

Converted["_Scroll"].BackgroundColor3 = Color3.fromRGB(43.00000123679638, 43.00000123679638, 43.00000123679638)
Converted["_Scroll"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Scroll"].BorderSizePixel = 0
Converted["_Scroll"].Position = UDim2.new(0.040121831, 0, 0.545074403, 0)
Converted["_Scroll"].Size = UDim2.new(0.908999979, 0, 0.271636993, 0)
Converted["_Scroll"].Name = "Scroll"
Converted["_Scroll"].Parent = Converted["_Dropdown"]

Converted["_UICorner4"].CornerRadius = UDim.new(0, 10)
Converted["_UICorner4"].Parent = Converted["_Scroll"]

Converted["_ScrollingFrame1"].CanvasSize = UDim2.new(0, 0, 9, 0)
Converted["_ScrollingFrame1"].ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
Converted["_ScrollingFrame1"].ScrollBarImageTransparency = 1
Converted["_ScrollingFrame1"].Active = true
Converted["_ScrollingFrame1"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_ScrollingFrame1"].BackgroundTransparency = 1
Converted["_ScrollingFrame1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_ScrollingFrame1"].BorderSizePixel = 0
Converted["_ScrollingFrame1"].Position = UDim2.new(0.127804935, 0, 1.081622, 0)
Converted["_ScrollingFrame1"].Size = UDim2.new(0.821195126, 0, 5.37048769, 0)
Converted["_ScrollingFrame1"].Visible = false
Converted["_ScrollingFrame1"].Parent = Converted["_Dropdown"]

Converted["_1"].Font = Enum.Font.GothamBold
Converted["_1"].Text = "%s"
Converted["_1"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_1"].TextScaled = true
Converted["_1"].TextSize = 14
Converted["_1"].TextWrapped = true
Converted["_1"].AutoButtonColor = false
Converted["_1"].BackgroundColor3 = Color3.fromRGB(65.0000037252903, 65.0000037252903, 65.0000037252903)
Converted["_1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_1"].BorderSizePixel = 0
Converted["_1"].Size = UDim2.new(0, 200, 0, 50)
Converted["_1"].Visible = false
Converted["_1"].Name = "1"
Converted["_1"].Parent = Converted["_ScrollingFrame1"]

Converted["_UICorner5"].CornerRadius = UDim.new(0, 10)
Converted["_UICorner5"].Parent = Converted["_1"]

Converted["_2"].Font = Enum.Font.GothamBold
Converted["_2"].Text = "%s"
Converted["_2"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_2"].TextScaled = true
Converted["_2"].TextSize = 14
Converted["_2"].TextWrapped = true
Converted["_2"].AutoButtonColor = false
Converted["_2"].BackgroundColor3 = Color3.fromRGB(65.0000037252903, 65.0000037252903, 65.0000037252903)
Converted["_2"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_2"].BorderSizePixel = 0
Converted["_2"].Size = UDim2.new(0, 200, 0, 50)
Converted["_2"].Visible = false
Converted["_2"].Name = "2"
Converted["_2"].Parent = Converted["_ScrollingFrame1"]

Converted["_UICorner6"].CornerRadius = UDim.new(0, 10)
Converted["_UICorner6"].Parent = Converted["_2"]

Converted["_4"].Font = Enum.Font.GothamBold
Converted["_4"].Text = "%s"
Converted["_4"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_4"].TextScaled = true
Converted["_4"].TextSize = 14
Converted["_4"].TextWrapped = true
Converted["_4"].AutoButtonColor = false
Converted["_4"].BackgroundColor3 = Color3.fromRGB(65.0000037252903, 65.0000037252903, 65.0000037252903)
Converted["_4"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_4"].BorderSizePixel = 0
Converted["_4"].Size = UDim2.new(0, 200, 0, 50)
Converted["_4"].Visible = false
Converted["_4"].Name = "4"
Converted["_4"].Parent = Converted["_ScrollingFrame1"]

Converted["_UICorner7"].CornerRadius = UDim.new(0, 10)
Converted["_UICorner7"].Parent = Converted["_4"]

Converted["_3"].Font = Enum.Font.GothamBold
Converted["_3"].Text = "%s"
Converted["_3"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_3"].TextScaled = true
Converted["_3"].TextSize = 14
Converted["_3"].TextWrapped = true
Converted["_3"].AutoButtonColor = false
Converted["_3"].BackgroundColor3 = Color3.fromRGB(65.0000037252903, 65.0000037252903, 65.0000037252903)
Converted["_3"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_3"].BorderSizePixel = 0
Converted["_3"].Size = UDim2.new(0, 200, 0, 50)
Converted["_3"].Visible = false
Converted["_3"].Name = "3"
Converted["_3"].Parent = Converted["_ScrollingFrame1"]

Converted["_UICorner8"].CornerRadius = UDim.new(0, 10)
Converted["_UICorner8"].Parent = Converted["_3"]

Converted["_5"].Font = Enum.Font.GothamBold
Converted["_5"].Text = "%s"
Converted["_5"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_5"].TextScaled = true
Converted["_5"].TextSize = 14
Converted["_5"].TextWrapped = true
Converted["_5"].AutoButtonColor = false
Converted["_5"].BackgroundColor3 = Color3.fromRGB(65.0000037252903, 65.0000037252903, 65.0000037252903)
Converted["_5"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_5"].BorderSizePixel = 0
Converted["_5"].Size = UDim2.new(0, 200, 0, 50)
Converted["_5"].Visible = false
Converted["_5"].Name = "5"
Converted["_5"].Parent = Converted["_ScrollingFrame1"]

Converted["_UICorner9"].CornerRadius = UDim.new(0, 10)
Converted["_UICorner9"].Parent = Converted["_5"]

Converted["_6"].Font = Enum.Font.GothamBold
Converted["_6"].Text = "%s"
Converted["_6"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_6"].TextScaled = true
Converted["_6"].TextSize = 14
Converted["_6"].TextWrapped = true
Converted["_6"].AutoButtonColor = false
Converted["_6"].BackgroundColor3 = Color3.fromRGB(65.0000037252903, 65.0000037252903, 65.0000037252903)
Converted["_6"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_6"].BorderSizePixel = 0
Converted["_6"].Size = UDim2.new(0, 200, 0, 50)
Converted["_6"].Visible = false
Converted["_6"].Name = "6"
Converted["_6"].Parent = Converted["_ScrollingFrame1"]

Converted["_UICorner10"].CornerRadius = UDim.new(0, 10)
Converted["_UICorner10"].Parent = Converted["_6"]

Converted["_7"].Font = Enum.Font.GothamBold
Converted["_7"].Text = "%s"
Converted["_7"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_7"].TextScaled = true
Converted["_7"].TextSize = 14
Converted["_7"].TextWrapped = true
Converted["_7"].AutoButtonColor = false
Converted["_7"].BackgroundColor3 = Color3.fromRGB(65.0000037252903, 65.0000037252903, 65.0000037252903)
Converted["_7"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_7"].BorderSizePixel = 0
Converted["_7"].Size = UDim2.new(0, 200, 0, 50)
Converted["_7"].Visible = false
Converted["_7"].Name = "7"
Converted["_7"].Parent = Converted["_ScrollingFrame1"]

Converted["_UICorner11"].CornerRadius = UDim.new(0, 10)
Converted["_UICorner11"].Parent = Converted["_7"]

Converted["_8"].Font = Enum.Font.GothamBold
Converted["_8"].Text = "%s"
Converted["_8"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_8"].TextScaled = true
Converted["_8"].TextSize = 14
Converted["_8"].TextWrapped = true
Converted["_8"].AutoButtonColor = false
Converted["_8"].BackgroundColor3 = Color3.fromRGB(65.0000037252903, 65.0000037252903, 65.0000037252903)
Converted["_8"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_8"].BorderSizePixel = 0
Converted["_8"].Size = UDim2.new(0, 200, 0, 50)
Converted["_8"].Visible = false
Converted["_8"].Name = "8"
Converted["_8"].Parent = Converted["_ScrollingFrame1"]

Converted["_UICorner12"].CornerRadius = UDim.new(0, 10)
Converted["_UICorner12"].Parent = Converted["_8"]

Converted["_9"].Font = Enum.Font.GothamBold
Converted["_9"].Text = "%s"
Converted["_9"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_9"].TextScaled = true
Converted["_9"].TextSize = 14
Converted["_9"].TextWrapped = true
Converted["_9"].AutoButtonColor = false
Converted["_9"].BackgroundColor3 = Color3.fromRGB(65.0000037252903, 65.0000037252903, 65.0000037252903)
Converted["_9"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_9"].BorderSizePixel = 0
Converted["_9"].Size = UDim2.new(0, 200, 0, 50)
Converted["_9"].Visible = false
Converted["_9"].Name = "9"
Converted["_9"].Parent = Converted["_ScrollingFrame1"]

Converted["_UICorner13"].CornerRadius = UDim.new(0, 10)
Converted["_UICorner13"].Parent = Converted["_9"]

Converted["_10"].Font = Enum.Font.GothamBold
Converted["_10"].Text = "%s"
Converted["_10"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_10"].TextScaled = true
Converted["_10"].TextSize = 14
Converted["_10"].TextWrapped = true
Converted["_10"].AutoButtonColor = false
Converted["_10"].BackgroundColor3 = Color3.fromRGB(65.0000037252903, 65.0000037252903, 65.0000037252903)
Converted["_10"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_10"].BorderSizePixel = 0
Converted["_10"].Size = UDim2.new(0, 200, 0, 50)
Converted["_10"].Visible = false
Converted["_10"].Name = "10"
Converted["_10"].Parent = Converted["_ScrollingFrame1"]

Converted["_UICorner14"].CornerRadius = UDim.new(0, 10)
Converted["_UICorner14"].Parent = Converted["_10"]

Converted["_UIGridLayout"].CellPadding = UDim2.new(0, 100, 0, 3)
Converted["_UIGridLayout"].CellSize = UDim2.new(0.899999976, 0, 0.0900000036, 0)
Converted["_UIGridLayout"].SortOrder = Enum.SortOrder.LayoutOrder
Converted["_UIGridLayout"].Parent = Converted["_ScrollingFrame1"]

Converted["_TopBar"].BackgroundColor3 = Color3.fromRGB(43.00000123679638, 43.00000123679638, 43.00000123679638)
Converted["_TopBar"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_TopBar"].BorderSizePixel = 0
Converted["_TopBar"].ClipsDescendants = true
Converted["_TopBar"].Position = UDim2.new(0.335245073, 0, 0.175824195, 0)
Converted["_TopBar"].Size = UDim2.new(0.329509914, 0, 0.0901098922, 0)
Converted["_TopBar"].Name = "TopBar"
Converted["_TopBar"].Parent = Converted["_Aspect"]

Converted["_UICorner15"].Parent = Converted["_TopBar"]

Converted["_Label2"].Font = Enum.Font.GothamBold
Converted["_Label2"].Text = "Aspect-Ware"
Converted["_Label2"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Label2"].TextScaled = true
Converted["_Label2"].TextSize = 14
Converted["_Label2"].TextWrapped = true
Converted["_Label2"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_Label2"].BackgroundTransparency = 1
Converted["_Label2"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Label2"].BorderSizePixel = 0
Converted["_Label2"].Position = UDim2.new(0.0110759493, 0, 0.0609756187, 0)
Converted["_Label2"].Size = UDim2.new(0.392405063, 0, 0.878048778, 0)
Converted["_Label2"].Name = "Label"
Converted["_Label2"].Parent = Converted["_TopBar"]

Converted["_Line"].BackgroundColor3 = Color3.fromRGB(65.0000037252903, 65.0000037252903, 65.0000037252903)
Converted["_Line"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Line"].BorderSizePixel = 0
Converted["_Line"].Position = UDim2.new(0.419303715, 0, 0.0853656679, 0)
Converted["_Line"].Size = UDim2.new(0, 6, 0, 67)
Converted["_Line"].Name = "Line"
Converted["_Line"].Parent = Converted["_TopBar"]

Converted["_UICorner16"].CornerRadius = UDim.new(0, 13)
Converted["_UICorner16"].Parent = Converted["_Line"]

Converted["_User"].Font = Enum.Font.GothamBold
Converted["_User"].Text = "Desync"
Converted["_User"].TextColor3 = Color3.fromRGB(255, 255, 255)
Converted["_User"].TextScaled = true
Converted["_User"].TextSize = 14
Converted["_User"].TextWrapped = true
Converted["_User"].TextXAlignment = Enum.TextXAlignment.Left
Converted["_User"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Converted["_User"].BackgroundTransparency = 1
Converted["_User"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_User"].BorderSizePixel = 0
Converted["_User"].Position = UDim2.new(0.462025225, 0, 0.256097734, 0)
Converted["_User"].Size = UDim2.new(0.406645566, 0, 0.46341446, 0)
Converted["_User"].Name = "User"
Converted["_User"].Parent = Converted["_TopBar"]

Converted["_ProfileBackdrop"].BackgroundColor3 = Color3.fromRGB(65.0000037252903, 65.0000037252903, 65.0000037252903)
Converted["_ProfileBackdrop"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_ProfileBackdrop"].BorderSizePixel = 0
Converted["_ProfileBackdrop"].Position = UDim2.new(0.886075854, 0, 0.158536777, 0)
Converted["_ProfileBackdrop"].Size = UDim2.new(0, 56, 0, 55)
Converted["_ProfileBackdrop"].Name = "ProfileBackdrop"
Converted["_ProfileBackdrop"].Parent = Converted["_TopBar"]

Converted["_UICorner17"].CornerRadius = UDim.new(0, 13)
Converted["_UICorner17"].Parent = Converted["_ProfileBackdrop"]

Converted["_Profile"].BackgroundColor3 = Color3.fromRGB(65.0000037252903, 65.0000037252903, 65.0000037252903)
Converted["_Profile"].BackgroundTransparency = 1
Converted["_Profile"].BorderColor3 = Color3.fromRGB(0, 0, 0)
Converted["_Profile"].BorderSizePixel = 0
Converted["_Profile"].Position = UDim2.new(0.89252007, 0, 0.207317248, 0)
Converted["_Profile"].Size = UDim2.new(0, 47, 0, 47)
Converted["_Profile"].Name = "Profile"
Converted["_Profile"].Parent = Converted["_TopBar"]

Converted["_UICorner18"].CornerRadius = UDim.new(0, 13)
Converted["_UICorner18"].Parent = Converted["_Profile"]

return Aspect_Ware
