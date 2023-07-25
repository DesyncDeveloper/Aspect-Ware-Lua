if not LPH_OBFUSCATED then
    LPH_JIT_MAX = function(...) return(...) end;
    LPH_NO_VIRTUALIZE = function(...) return(...) end;
end

local start_AspectHelpers = os.clock()
local AspectHelpers = loadstring(game:HttpGet(('https://raw.githubusercontent.com/DesyncDeveloper/Aspect-Helpers/main/Aspect-Helpers')))()
local Services = AspectHelpers.Services
local Variables = AspectHelpers.Variables
print("Aspect-Helpers Loaded - " .. tostring(os.clock() - start_AspectHelpers))

function getexploit()
	local exploit =
		(syn and not is_sirhurt_closure and not pebc_execute and "Synapse") or
		(secure_load and "Sentinel") or
		(is_sirhurt_closure and "Sirhurt") or
		(pebc_execute and "ProtoSmasher") or
		(KRNL_LOADED and "Krnl") or
		(WrapGlobal and "WeAreDevs") or
		(isvm and "Proxo") or
		(shadow_env and "Shadow") or
		(jit and "EasyExploits") or
		(getscriptenvs and "Calamari") or
		(unit and not syn and "Unit") or
		(OXYGEN_LOADED and "Oxygen U") or
		(IsElectron and "Electron") or
		("Unsupported")

	return exploit
end

function ErrorHandling(Message, Print)
	local ErrorMessage = "Aspect-Ware Error: "

	local Exploit = getexploit()
	local lowercaseMessage = string.lower(Message)
	local lowercaseExploit = string.lower(Exploit)

	local cleanedMessage, _ = string.gsub(lowercaseMessage, lowercaseExploit .. ":[^:]*:", "")
	local LineOfError = string.match(string.gsub(lowercaseMessage, lowercaseExploit, ""), ":(.-):")

	if LineOfError then
		ErrorMessage = "Aspect-Ware Error On Line: "
		ErrorMessage = ErrorMessage..string.match(string.gsub(lowercaseMessage, lowercaseExploit, ""), ":(.-):")..":".. cleanedMessage
		warn(ErrorMessage)
		return 
	end

	if Print then
		print(ErrorMessage..Message)
		return
	else
		warn(ErrorMessage..Message)
		return
	end
end

local Connections = {}

if _G.Connections ~= nil then
	LPH_JIT_MAX(function()
		for i, Connection in next, Connections do
			Connection:Disconnect()
			table.remove(Connections, i)
			_G.Connections = Connections
		end

		Connections = _G.Connections
	end)()
else
	_G.Connections = Connections
end

local LibraryFunctions = {}

local Aspect_Ware = nil

function LibraryFunctions:AspectWareRunning()
	if Aspect_Ware == nil then
		return nil
	end

	if gethui then
		return Aspect_Ware.Parent == gethui()
	else
		return Aspect_Ware.Parent == Services.CoreGui
	end
end

task.spawn(function()
	local success, error = pcall(function()
		LPH_JIT_MAX(function()
			while (LibraryFunctions:AspectWareRunning()) do
				task.wait()
			end
	
			for i, Connection in next, Connections do
				Connection:Disconnect()
				table.remove(Connections, i)
				_G.Connections = Connections
			end
		end)()
	end)

	if not success then
		ErrorHandling(error)

		for i, Connection in next, Connections do
			Connection:Disconnect()
			table.remove(Connections, i)
			_G.Connections = Connections
		end		
	end
end)

function LibraryFunctions:AddConnection(Signal, Function)
	if (not LibraryFunctions:AspectWareRunning()) then
		return
	end
	local SignalConnect = Signal:Connect(Function)
	table.insert(Connections, SignalConnect)
	_G.Connections = Connections
	return SignalConnect
end

local LoadHandling = {Loaded = false, Loading = false, Debounce = false, Opened = false}

function LoadHandling:Start(Main)
	Main.Size = UDim2.new(0, 598, 0, 6)
	Main.Position = UDim2.new(0.344, 0, 0.201, 0)
	Main.BackgroundTransparency = 1
	Main.Banner.BackgroundTransparency = 1
	Main.Banner.Frame.BackgroundTransparency = 1
	Main.Banner.Frame.Label.TextTransparency = 1
	Main.Left.ImageTransparency = 1
	Main.Right.ImageTransparency = 1
	Main.Sections.Visible = false
	Main.Label.TextTransparency = 1
	Main.Label.Text = ""
	
	Main.Navigation.Visible = false

	local finalSize = UDim2.new(0, 598, 0, 431)
	local sizeTweenInfo = TweenInfo.new(2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
	local transparencyTweenInfo = TweenInfo.new(2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)

	local sizeTween = Services.TweenService:Create(Main, sizeTweenInfo, {Size = finalSize})
	local transparencyTween = Services.TweenService:Create(Main, transparencyTweenInfo, {BackgroundTransparency = 0})
	local transparencyTween2 = Services.TweenService:Create(Main.Banner, transparencyTweenInfo, {BackgroundTransparency = 0})
	local transparencyTween3 = Services.TweenService:Create(Main.Banner.Frame, transparencyTweenInfo, {BackgroundTransparency = 0.5})
	local transparencyTween4 = Services.TweenService:Create(Main.Banner.Frame.Label, transparencyTweenInfo, {TextTransparency = 0})
	local transparencyTween5 = Services.TweenService:Create(Main.Left, transparencyTweenInfo, {ImageTransparency = 0})
	local transparencyTween6 = Services.TweenService:Create(Main.Right, transparencyTweenInfo, {ImageTransparency = 0})

	local function OpenGui()
		AspectHelpers:ThreadedTweenPlay(sizeTween)
		AspectHelpers:ThreadedTweenPlay(transparencyTween)
		AspectHelpers:ThreadedTweenPlay(transparencyTween2)
		Main.Banner.Visible = true
		AspectHelpers:ThreadedTweenPlay(transparencyTween3)
		AspectHelpers:ThreadedTweenPlay(transparencyTween4)
		return
	end

	local completedCount = 0
	local totalTweens = 5

	local TransparencyTweens = {}
	local Tweens1 = {}
	local Tweens2 = {}

	local function makeChildrenTransparent(object)
		LPH_JIT_MAX(function()
			coroutine.wrap(function()
				coroutine.resume(coroutine.create(function()
					local tweens = {}
	
					local MainSection = object.Parent
					local TweenSection = Services.TweenService:Create(MainSection, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundTransparency = 1})
					local TweenBorder = Services.TweenService:Create(MainSection.Border, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundTransparency = 1})
					local TweenLabel = Services.TweenService:Create(MainSection.SectionLabel, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 1})
					local TweenContainer = Services.TweenService:Create(MainSection.Container, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ScrollBarImageTransparency = 1})
	
					table.insert(tweens, TweenSection)
					table.insert(tweens, TweenBorder)
					table.insert(tweens, TweenLabel)
					table.insert(tweens, TweenContainer)
	
					TransparencyTweens[MainSection] = {}
					TransparencyTweens[MainSection]["BackgroundTransparency"] = MainSection.BackgroundTransparency
	
					TransparencyTweens[MainSection.Border] = {}
					TransparencyTweens[MainSection.Border]["BackgroundTransparency"] = MainSection.Border.BackgroundTransparency
	
					TransparencyTweens[MainSection.SectionLabel] = {}
					TransparencyTweens[MainSection.SectionLabel]["TextTransparency"] = MainSection.SectionLabel.TextTransparency
	
					TransparencyTweens[MainSection.Container] = {}
					TransparencyTweens[MainSection.Container]["ScrollBarImageTransparency"] = MainSection.Container.ScrollBarImageTransparency
	
					local Navigation = MainSection.Parent.Parent.Navigation
	
					local TweenNavigation1 = Services.TweenService:Create(Navigation.DOWN, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundTransparency = 1})
					local TweenNavigation2 = Services.TweenService:Create(Navigation.DOWN.Icon.Icon, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 1})
					local TweenNavigation3 = Services.TweenService:Create(Navigation.DOWN.Label, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 1})
	
					local TweenNavigation4 = Services.TweenService:Create(Navigation.UP, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundTransparency = 1})
					local TweenNavigation5 = Services.TweenService:Create(Navigation.UP.Icon.Icon, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {ImageTransparency = 1})
					local TweenNavigation6 = Services.TweenService:Create(Navigation.UP.Label, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 1})
					
					local TweenLine = Services.TweenService:Create(MainSection.Parent.Parent.Border, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundTransparency = 1})
	
					
					table.insert(tweens, TweenNavigation1)
					table.insert(tweens, TweenNavigation2)
					table.insert(tweens, TweenNavigation3)
					table.insert(tweens, TweenNavigation4)
					table.insert(tweens, TweenNavigation5)
					table.insert(tweens, TweenNavigation6)
					table.insert(tweens, TweenLine)
	
					TransparencyTweens[Navigation.DOWN] = {}
					TransparencyTweens[Navigation.DOWN]["BackgroundTransparency"] = Navigation.DOWN.BackgroundTransparency
	
					TransparencyTweens[Navigation.DOWN.Icon.Icon] = {}
					TransparencyTweens[Navigation.DOWN.Icon.Icon]["ImageTransparency"] = Navigation.DOWN.Icon.Icon.ImageTransparency
	
					TransparencyTweens[Navigation.DOWN.Label] = {}
					TransparencyTweens[Navigation.DOWN.Label]["TextTransparency"] = Navigation.DOWN.Label.TextTransparency
	
					TransparencyTweens[Navigation.UP] = {}
					TransparencyTweens[Navigation.UP]["BackgroundTransparency"] = Navigation.DOWN.BackgroundTransparency
	
					TransparencyTweens[Navigation.UP.Icon.Icon] = {}
					TransparencyTweens[Navigation.UP.Icon.Icon]["ImageTransparency"] = Navigation.DOWN.Icon.Icon.ImageTransparency
	
					TransparencyTweens[Navigation.UP.Label] = {}
					TransparencyTweens[Navigation.UP.Label]["TextTransparency"] = Navigation.UP.Label.TextTransparency
					
					print(MainSection.Parent.Parent.Border.BackgroundTransparency)
					
					TransparencyTweens[MainSection.Parent.Parent.Border] = {}
					TransparencyTweens[MainSection.Parent.Parent.Border]["BackgroundTransparency"] = 0
	
					for _, v in ipairs(object:GetDescendants()) do
						if v:IsA("GuiObject") or v:IsA("UIStroke") then
							local className = v.ClassName
							local props = AspectHelpers.transparencyProps[className]
	
							if props then
								TransparencyTweens[v] = {}
	
								for _, propName in ipairs(props) do
									if v[propName] ~= nil then
										TransparencyTweens[v][propName] = v[propName]
										v[propName] = 1
									end
								end
							end
						end
					end
	
					for object, props in pairs(TransparencyTweens) do
	
						for propName, propValue in pairs(props) do
							local tween = Services.TweenService:Create(object, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {[propName] = 1})
							tweens[propName] = tween
						end
	
						Tweens1[object] = tweens
					end
	
					for object, tweens in pairs(Tweens1) do
						for _, tween in pairs(tweens) do
							AspectHelpers:TweenPlay(tween)
						end
					end
	
				end))
			end)()
		end)()
	end


	local function MakeChildrenShow()

		LPH_JIT_MAX(function()
			coroutine.wrap(function()
				coroutine.resume(coroutine.create(function()
					local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
	
					for object, props in pairs(TransparencyTweens) do
						local tweens = {}
	
						for propName, propValue in pairs(props) do
							local tween = Services.TweenService:Create(object, tweenInfo, {[propName] = propValue})
							tweens[propName] = tween
						end
	
						Tweens2[object] = tweens
					end
	
					for object, tweens in pairs(Tweens2) do
						for _, tween in pairs(tweens) do
							AspectHelpers:TweenPlay(tween)
						end
					end
				end))
			end)()
		end)()
	end

	local function OnTweenCompleted()
		completedCount = completedCount + 1
		if completedCount == totalTweens then
			local leftPart = Main.Left
			local rightPart = Main.Right

			LPH_JIT_MAX(function()
				coroutine.wrap(function()
					coroutine.resume(coroutine.create(function()
						for i,v in pairs(Main.Sections:GetChildren()) do
							if v:IsA("Frame") then
								makeChildrenTransparent(v.Container)
							end
						end
					end))
				end)()		
			end)()

			leftPart.Visible = true
			AspectHelpers:ThreadedTweenPlay(transparencyTween5)

			rightPart.Visible = true
			AspectHelpers:ThreadedTweenPlay(transparencyTween6)

			local leftPartInitialPosition = UDim2.new(0.503, -270, 0.572, 0)
			local rightPartInitialPosition = UDim2.new(0.339, 362, 0.572, 0)

			local leftPartEndingPosition = UDim2.new(0.503, -35, 0.572, 0)
			local rightPartEndingPosition = UDim2.new(0.339, 125, 0.572, 0)

			leftPart.Position = leftPartInitialPosition
			rightPart.Position = rightPartInitialPosition

			local leftTweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Linear)
			local rightTweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Linear)

			local leftTween = Services.TweenService:Create(leftPart, leftTweenInfo, {Rotation = 360, Position = leftPartEndingPosition})
			local rightTween = Services.TweenService:Create(rightPart, rightTweenInfo, {Rotation = -360, Position = rightPartEndingPosition})

			AspectHelpers:TweenPlay(leftTween)
			AspectHelpers:TweenPlay(rightTween)

			task.wait(1)
			local fadeInWelcomeInfo = TweenInfo.new(0.5, Enum.EasingStyle.Linear)
			local displayWelcome = Services.TweenService:Create(Main.Label, fadeInWelcomeInfo, {TextTransparency = 0})
			AspectHelpers:TweenPlay(displayWelcome)

			local AnimatedModule = AspectHelpers:AnimateUI()
			AnimatedModule.typeWrite(Main.Label, "Welcome, "..Variables.Player.DisplayName, 0.05)

			task.wait(3)

			local leftPartInitialPosition = UDim2.new(0.503, -270, 0.572, 0)
			local rightPartInitialPosition = UDim2.new(0.339, 362, 0.572, 0)

			local leftPartEndingPosition = UDim2.new(0.503, -35, 0.572, 0)
			local rightPartEndingPosition = UDim2.new(0.339, 125, 0.572, 0)

			leftPart.Position = leftPartEndingPosition
			rightPart.Position = rightPartEndingPosition

			local leftTweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Linear)
			local rightTweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Linear)
			local fadeOutTweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Linear)
			local fadeOutWelcomeInfo = TweenInfo.new(0.5, Enum.EasingStyle.Linear)

			local leftTween = Services.TweenService:Create(leftPart, leftTweenInfo, {Rotation = 0, Position = leftPartInitialPosition})
			local rightTween = Services.TweenService:Create(rightPart, rightTweenInfo, {Rotation = 0, Position = rightPartInitialPosition})

			local leftfadeOutTween = Services.TweenService:Create(leftPart, fadeOutTweenInfo, {ImageTransparency = 1})
			local rightfadeOutTween = Services.TweenService:Create(rightPart, fadeOutTweenInfo, {ImageTransparency = 1})

			if Main == nil or Main.Label == nil then return end
			local removeWelcome = Services.TweenService:Create(Main.Label, fadeOutTweenInfo, {TextTransparency = 1})

			AspectHelpers:TweenPlay(leftTween)
			AspectHelpers:TweenPlay(leftfadeOutTween)
			AspectHelpers:TweenPlay(rightTween)
			AspectHelpers:TweenPlay(rightfadeOutTween)
			AspectHelpers:TweenPlay(removeWelcome)

			Main:WaitForChild("Sections").Visible = true
			Main.Navigation.Visible = true
			task.wait(2)

			MakeChildrenShow()

			sizeTween:Destroy()
			transparencyTween:Destroy()
			transparencyTween2:Destroy()
			transparencyTween3:Destroy()
			transparencyTween4:Destroy()

			LoadHandling.Opened = true
			return
		else
			return
		end
	end

	AspectHelpers:TweenCompleted(sizeTween, true, _G.Connections, OnTweenCompleted)
	Connections = _G.Connections
	AspectHelpers:TweenCompleted(transparencyTween, true, _G.Connections, OnTweenCompleted)
	Connections = _G.Connections
	AspectHelpers:TweenCompleted(transparencyTween2, true, _G.Connections, OnTweenCompleted)
	Connections = _G.Connections
	AspectHelpers:TweenCompleted(transparencyTween3, true, _G.Connections, OnTweenCompleted)
	Connections = _G.Connections
	AspectHelpers:TweenCompleted(transparencyTween4, true, _G.Connections, OnTweenCompleted)
	Connections = _G.Connections

	local function LoadGui()
		if LoadHandling.Loaded == false then
			LoadHandling.Loading = true
			Main.Size = UDim2.new(0, 598, 0, 6)
			Main.Position = UDim2.new(0.344, 0, 0.201, 0)
			Main.BackgroundTransparency = 1
			Main.Border.BackgroundTransparency = 1
			Main.Banner.BackgroundTransparency = 1
			Main.Banner.Frame.BackgroundTransparency = 1
			Main.Banner.Frame.Label.TextTransparency = 1
			Main.Left.ImageTransparency = 1
			Main.Right.ImageTransparency = 1
			Main.Sections.Visible = false
			Main.Label.TextTransparency = 1
			Main.Label.Text = ""

			OpenGui()
			LoadHandling.Loaded = true
			LoadHandling.Loading = false
		end
	end

	LibraryFunctions:AddConnection(Services.UserInputService.InputBegan, function(input, gameProcessed)
		if (Services.UserInputService:GetFocusedTextBox()) then
			return
		end

		if gameProcessed then
			return
		end

		if input.KeyCode == Enum.KeyCode.RightShift or input.KeyCode == Enum.KeyCode.LeftShift and not LoadHandling.Loading then

			if LoadHandling.Debounce then
				return
			end

			LoadHandling.Debounce = true

			if LoadHandling.Opened then
				Main.Visible = false
				LoadHandling.Opened = false
			else
				Main.Visible = true
				LoadHandling.Opened = true
			end

			task.wait(1)
			LoadHandling.Debounce = false
			return
		end	
	end)

	LibraryFunctions:AddConnection(Services.UserInputService.InputBegan, function(input, gameProcessed)
		if (Services.UserInputService:GetFocusedTextBox()) then
			return
		end

		if gameProcessed then
			return
		end

		if input.KeyCode == Enum.KeyCode.RightShift or input.KeyCode == Enum.KeyCode.LeftShift and not LoadHandling.Loading then

			if LoadHandling.Debounce then
				return
			end

			LoadHandling.Debounce = true

			if LoadHandling.Opened then
				Main.Visible = false
				LoadHandling.Opened = false
			else
				Main.Visible = true
				LoadHandling.Opened = true
			end

			task.wait(1)
			LoadHandling.Debounce = false
			return
		end	
	end)

	LoadGui()
end

function LibraryFunctions:Draggable(DragPoint, Main)
	LPH_JIT_MAX(function()
		pcall(function()
			local Dragging, DragInput, MousePos, FramePos = false
			LibraryFunctions:AddConnection(DragPoint.InputBegan, function(Input)
				if Input.UserInputType == Enum.UserInputType.MouseButton1 and not LoadHandling.Loading  then
					Dragging = true
					MousePos = Input.Position
					FramePos = Main.Position
	
					Input.Changed:Connect(function()
						if Input.UserInputState == Enum.UserInputState.End then
							Dragging = false
						end
					end)
				end
			end)
			LibraryFunctions:AddConnection(DragPoint.InputChanged, function(Input)
				if Input.UserInputType == Enum.UserInputType.MouseMovement then
					DragInput = Input
				end
			end)
			LibraryFunctions:AddConnection(Services.UserInputService.InputChanged, function(Input)
				if Input == DragInput and Dragging then
					local Delta = Input.Position - MousePos
					Main.Position  = UDim2.new(FramePos.X.Scale,FramePos.X.Offset + Delta.X, FramePos.Y.Scale, FramePos.Y.Offset + Delta.Y)
				end
			end)
		end)    
	end)()
end

local PageHandling = {
	Pages = {},
	MaxPages = 0,
	FirstPage = nil,
	LastPage = nil,
}

function PageHandling:CreatePageSnap(Animated, Circular, EasingDirection, EasingStyle, Padding, TweenTime, FillDirection, HorizontalAlignment, SortOrder, VerticalAlignment, Parent)
	if Animated == nil or Circular == nil or EasingDirection == nil or EasingStyle == nil or Padding == nil or TweenTime == nil or Parent == nil then
		return
	end

	local PageLayout = Instance.new("UIPageLayout")
	PageLayout.Animated = Animated
	PageLayout.Circular = Circular
	PageLayout.EasingDirection = EasingDirection
	PageLayout.EasingStyle = EasingStyle
	PageLayout.Padding = Padding
	PageLayout.TweenTime = TweenTime
	PageLayout.FillDirection = FillDirection
	PageLayout.HorizontalAlignment = HorizontalAlignment
	PageLayout.SortOrder = SortOrder
	PageLayout.VerticalAlignment = VerticalAlignment
	PageLayout.Parent = Parent

	return PageLayout
end

function PageHandling:TrackScrolling(PageLayout, Navigation)
	if PageLayout == nil then
		return
	end

	local lastFrame = nil
	local currentFrame
	local CurrentPageIndex

	LibraryFunctions:AddConnection(PageLayout:GetPropertyChangedSignal("CurrentPage"), function()
		if currentFrame ~= PageLayout.CurrentPage then
			currentFrame = PageLayout.CurrentPage

			CurrentPageIndex = PageHandling.Pages[currentFrame.Name]			
			if CurrentPageIndex == PageHandling.MaxPages then
				Navigation.UP.Visible = false
				Navigation.DOWN.Visible = false
				Navigation.TOP.Visible = true
			else
				Navigation.UP.Visible = true
				Navigation.DOWN.Visible = true
				Navigation.TOP.Visible = false
			end

			currentFrame.Visible = true

			lastFrame = currentFrame
		end
	end)
end

function PageHandling:EditCurrentPage(PageLayout, Value)
	if Value == "UP" then
		PageLayout:Previous()
	elseif Value == "DOWN" then
		PageLayout:Next()
	elseif Value == "TOP" then
		PageLayout:JumpTo(PageHandling.FirstPage)
	end
end

local AspectWare = {}

local IDs = {
	["Window"] = "13702621875",
	["Section"] = "13692990729",
	["Button"] = "13703048187",
	["Slider"] = "13704070620",
	["Toggle"] = "13703250005",
	["Label"] = "13692984868",
}

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

function CreateWindowUI()
	local Window = AspectHelpers:LoadAsset(IDs.Window)
	return Window
end

function CreateSectionUI()
	local Section = AspectHelpers:LoadAsset(IDs.Section)

	AspectHelpers:GetPropertyChangedSignal(Section.Container.UIListLayout, "AbsoluteContentSize", function()
		Section.Container.CanvasSize = UDim2.new(0, 0, 0, Section.Container.UIListLayout.AbsoluteContentSize.Y + 30)
	end)

	return Section
end

function CreateButtonUI()
	local Button = AspectHelpers:LoadAsset(IDs.Button)
	return Button
end

function CreateSliderUI()
	local Slider = AspectHelpers:LoadAsset(IDs.Slider)
	return Slider
end

function CreateToggleUI()
	local Toggle = AspectHelpers:LoadAsset(IDs.Toggle)
	return Toggle
end

function CreateLabelUI()
	local Label = AspectHelpers:LoadAsset(IDs.Label)
	return Label
end


function AspectWare:CreateWindow(Config)
	if Config == nil then
		ErrorHandling("Please provide config.")
	end

	Config = Config or {}
	Config.Name = Config.Name or "Aspect-Ware"

	local AspectWareGui = CreateScreenGui()

	LPH_JIT_MAX(function()
		if gethui then
			for _, Interface in ipairs(gethui():GetChildren()) do
				if Interface.Name == AspectWareGui.Name and Interface ~= AspectWareGui then
					Interface:Destroy()
				end
			end
		else
			for _, Interface in ipairs(game.CoreGui:GetChildren()) do
				if Interface.Name == AspectWareGui.Name and Interface ~= AspectWareGui then
					Interface:Destroy()
				end
			end
		end
	end)()

	local Window = CreateWindowUI()
	Window.Banner.Frame.Label.Text = Config.Name
	Window.Visible = false
	Window.Sections:ClearAllChildren()
	Window.Parent = AspectWareGui

	local PageLayout = PageHandling:CreatePageSnap(true, false, Enum.EasingDirection.In, Enum.EasingStyle.Back, UDim.new(0, 5), 1, Enum.FillDirection["Vertical"], Enum.HorizontalAlignment["Left"], Enum.SortOrder["LayoutOrder"], Enum.VerticalAlignment["Top"], Window.Sections)
	PageHandling:TrackScrolling(PageLayout, Window.Navigation)
	LibraryFunctions:Draggable(Window.Banner.Frame, Window)

	Window.Visible = true

	local Functions = {}

	LPH_JIT_MAX(function()
	local function GetFunctions(Parent)

		local FunctionsTable = {}

		if Parent == nil then
			ErrorHandling("Label missing or nil.")
			return
		end

		function FunctionsTable:AddLabel(Text)
			if Text == nil then
				ErrorHandling("Invalid label text.")
				return
			end

			if Parent == nil then
				ErrorHandling("Label missing or nil.")
				return
			end

			local FunctionTable = {}

			local Label = CreateLabelUI()
			Label.Parent = Parent
			Label.Label.Text = Text

			function FunctionTable:Edit(Text)
				if Text == nil then
					ErrorHandling("Invalid edit text.")
					return
				end

				if Label == nil then
					ErrorHandling("Label missing or nil.")
					return
				end

				if Parent == nil then
					ErrorHandling("Label missing or nil.")
					return
				end

				Label.Label.Text = Text
			end

			return FunctionTable
		end

		function FunctionsTable:AddButton(Config)


			if type(Config) ~= "table" then
				ErrorHandling("Invalid config.")
				return
			end

			if Parent == nil then
				ErrorHandling("Label missing or nil.")
				return
			end

			Config = Config or {}
			Config.Name = Config.Name or "Button"
			Config.Callback = Config.Callback or function() end

			local ButtonTable = {}

			local Button = CreateButtonUI()
			Button.Parent = Parent
			Button.Label.Text = Config.Name

			LibraryFunctions:AddConnection(Button.Button.MouseButton1Up, function()
				task.spawn(function()
					Config.Callback()
				end)
			end)

			function ButtonTable:Edit(Text)

				if Text == nil then
					ErrorHandling("Invalid edit text.")
					return
				end

				if Button:FindFirstChild("Label") == nil then
					ErrorHandling("Label missing or nil.")
					return
				end

				if Parent == nil then
					ErrorHandling("Label missing or nil.")
					return
				end

				Button.Label.Text = Text
			end	
		end

		function FunctionsTable:AddToggle(Config)
			if type(Config) ~= "table" then
				ErrorHandling("Invalid config.")
				return
			end

			if Parent == nil then
				ErrorHandling("Parent missing or nil.")
				return
			end

			Config = Config or {}

			Config.Name = Config.Name or "Toggle"
			Config.Default = Config.Default or false
			Config.Callback = Config.Callback or function() end

			local ToggleFunction = {}

			local Toggle = CreateToggleUI()
			Toggle.Parent = Parent
			Toggle.Label.Text = Config.Name

			local ToggleValue = Config.Default

			local function EditToggleButton()
				if ToggleValue then
					local tickSize = UDim2.new(0, Toggle.Toggle.Size.X.Offset, 0, Toggle.Toggle.Size.Y.Offset)
					local sizeTweenInfo  = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
					local colorTweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
					local imageTweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
					local sizeTweenInfo  = Services.TweenService:Create(Toggle.Toggle.Icon, sizeTweenInfo , {Size = tickSize})
					local colorTween = Services.TweenService:Create(Toggle.Toggle, colorTweenInfo, {BackgroundColor3 = Color3.fromRGB(11, 119, 227)})
					local imageTween = Services.TweenService:Create(Toggle.Toggle.Icon, colorTweenInfo, {ImageTransparency = 0})
					AspectHelpers:ThreadedTweenPlay(sizeTweenInfo)
					AspectHelpers:ThreadedTweenPlay(colorTween)
					AspectHelpers:ThreadedTweenPlay(imageTween)
				else
					local tickSize = UDim2.new(0, 8,0, 8)
					local sizeTweenInfo  = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
					local colorTweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
					local imageTweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
					local resizeTween = Services.TweenService:Create(Toggle.Toggle.Icon, sizeTweenInfo , {Size = tickSize})
					local colorTween = Services.TweenService:Create(Toggle.Toggle, colorTweenInfo, {BackgroundColor3 = Color3.fromRGB(46, 46, 46)})
					local imageTween = Services.TweenService:Create(Toggle.Toggle.Icon, colorTweenInfo, {ImageTransparency = 1})
					AspectHelpers:ThreadedTweenPlay(resizeTween)
					AspectHelpers:ThreadedTweenPlay(colorTween)
					AspectHelpers:ThreadedTweenPlay(imageTween)
				end
			end

			EditToggleButton()

			LibraryFunctions:AddConnection(Toggle.Button.MouseButton1Up, function()
				task.spawn(function()
					if not ToggleValue then
						ToggleValue = true
						EditToggleButton()
					else
						ToggleValue = false
						EditToggleButton()
					end

					task.spawn(function()
						Config.Callback(ToggleValue)
					end)
				end)
			end)

			function ToggleFunction:Edit(Text)

				if Text == nil then
					ErrorHandling("Invalid edit text.")
					return
				end

				if Toggle:FindFirstChild("Label") == nil then
					ErrorHandling("Label missing or nil.")
					return
				end

				if Parent == nil then
					ErrorHandling("Parent missing or nil.")
					return
				end

				Toggle.Label.Text = Text
			end	

			function ToggleFunction:SetValue(Value)

				if Value == nil then
					ErrorHandling("Invalid value.")
					return
				end

				if type(Value) ~= "boolean" then
					ErrorHandling("Invalid value.")
					return
				end

				if Parent == nil then
					ErrorHandling("Parent missing or nil.")
					return
				end

				ToggleValue = Value
				EditToggleButton()
				task.spawn(function()
					Config.Callback(ToggleValue)
				end)
			end	
			return ToggleFunction
		end

		function FunctionsTable:AddSlider(Config)
			if type(Config) ~= "table" then
				ErrorHandling("Invalid config.")
				return
			end

			if Parent == nil then
				ErrorHandling("Parent missing or nil.")
				return
			end

			Config = Config or {}

			Config.Name = Config.Name or "Slider"
			Config.Min = Config.Min or 0
			Config.Max = Config.Max or 150
			Config.Increment = Config.Increment or 1
			Config.Default = Config.Default or Config.Min
			Config.Callback = Config.Callback or function() end

			local SliderTable = {}

			local Slider = CreateSliderUI()
			Slider.Parent = Parent
			Slider.Name = Config.Name
			Slider.Label.Text = Config.Name

			local Handle = Slider.Frame.Handle
			local Bar = Handle.Bar

			local ap = Vector2.new(Handle.AbsolutePosition.X, Handle.AbsolutePosition.Y)
			local as = Vector2.new(Handle.AbsoluteSize.X, Handle.AbsoluteSize.Y)

			local function updateBar(value)
				local barSizeX = math.clamp((value - Config.Min) / (Config.Max - Config.Min) * as.X, 0, as.X)
				Bar.Size = UDim2.new(0, barSizeX, 1, 0)
			end

			local function updateValue()
				local barSizeX = Bar.Size.X.Offset
				local value = math.floor((barSizeX / as.X) * (Config.Max - Config.Min) + Config.Min)
				local currentValue = tonumber(Slider.Frame.Value.Text) or 0
				local duration = math.max(0.2, 1 / math.abs(value - currentValue))

				Slider.Frame.Value.Text = value

				task.spawn(function()
					Config.Callback(value)
				end)
			end

			local function handleClick()
				local input = Services.UserInputService:GetMouseLocation()
				local clickPosition = Vector2.new(input.X, input.Y)
				local relativeX = math.clamp((clickPosition.X - ap.X) / as.X, 0, 1)
				local value = math.floor(relativeX * (Config.Max - Config.Min) + Config.Min)
				updateBar(value)
				updateValue()
			end

			local function handleDrag(input)
				local relativeX = math.clamp((input.Position.X - ap.X) / as.X, 0, 1)
				local value = math.floor(relativeX * (Config.Max - Config.Min) + Config.Min)
				updateBar(value)
				updateValue()
			end

			local dragging = false

			LibraryFunctions:AddConnection(Handle.MouseButton1Down, function()
				dragging = true
			end)

			LibraryFunctions:AddConnection(Services.UserInputService.InputChanged, function(input)
				if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
					handleDrag(input)
				end
			end)

			LibraryFunctions:AddConnection(Services.UserInputService.InputEnded, function(input)
				if input.UserInputType == Enum.UserInputType.MouseButton1 then
					dragging = false
				end
			end)

			LibraryFunctions:AddConnection(Variables.Mouse.Move, function(input)
				if dragging then
					local mousePosition = Services.UserInputService:GetMouseLocation()
					local framePosition = Handle.AbsolutePosition
					local frameSize = Handle.AbsoluteSize

					if mousePosition.X >= framePosition.X and mousePosition.X <= framePosition.X + frameSize.X
						and mousePosition.Y >= framePosition.Y and mousePosition.Y <= framePosition.Y + frameSize.Y then
						handleDrag(mousePosition)
					end
				end
			end)

			function SliderTable:SetValue(NewValue)
				if NewValue == nil then
					ErrorHandling("Invalid value.")
					return
				end

				if type(NewValue) ~= "number" then
					ErrorHandling("Invalid value.")
					return
				end

				if NewValue < Config.Min or NewValue > Config.Max then
					ErrorHandling("Value out of range.")
					return
				end

				local barSizeX = math.clamp((NewValue - Config.Min) / (Config.Max - Config.Min) * as.X, 0, as.X)
				Bar.Size = UDim2.new(0, barSizeX, 1, 0)
				Slider.Frame.Value.Text = NewValue
				updateValue()
			end
			return SliderTable
		end

		return FunctionsTable
	end

	local MainConfig = Config or {}
	local WindowName = MainConfig.Name or "Aspect-Ware"

	function Functions:CreateSection(SectionConfig)
		if SectionConfig == nil or type(SectionConfig) ~= "table" then
			ErrorHandling("Invalid section configuration.")
			return
		end

		if Window == nil then
			ErrorHandling("Window is missing.")
			return
		end

		SectionConfig = SectionConfig or {}
		SectionConfig.Name = SectionConfig.Name or "Section"
		SectionConfig.Order = SectionConfig.Order or -1

		local SectionUI = CreateSectionUI()
		SectionUI.Parent = Window.Sections
		SectionUI.LayoutOrder = SectionConfig.Order
		SectionUI.Name = SectionConfig.Name
		SectionUI.SectionLabel.Text = SectionConfig.Name

		local PageCount = 1
		PageCount = PageCount + #Window.Sections:GetChildren() - 2
		PageHandling.Pages[SectionUI.Name] = PageCount
		PageHandling.MaxPages = PageHandling.MaxPages + 1

		if PageCount >= 2 then

			if Window.Navigation.Parent == nil then
				Window.Navigation.Parent = Window
			end
		end

		if PageHandling.FirstPage == nil then
			PageHandling.FirstPage = SectionUI
			PageHandling.LastPage = SectionUI
		else
			PageHandling.LastPage = SectionUI			
		end

		local SectionFunction = {}
		for i, v in next, GetFunctions(SectionUI.Container) do
			SectionFunction[i] = v 
		end
		return SectionFunction
	end
	end)()

	LibraryFunctions:AddConnection(Window.Navigation.DOWN.Button.MouseButton1Click, function()
		PageHandling:EditCurrentPage(PageLayout, "DOWN")
	end)

	LibraryFunctions:AddConnection(Window.Navigation.UP.Button.MouseButton1Click, function()
		PageHandling:EditCurrentPage(PageLayout, "UP")
	end)

	LibraryFunctions:AddConnection(Window.Navigation.TOP.Button.MouseButton1Click, function()
		PageHandling:EditCurrentPage(PageLayout, "TOP")
	end)

	LoadHandling:Start(Window)

	return Functions
end

return AspectWare
