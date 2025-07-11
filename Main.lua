local Players = game:GetService("Players")
local RepStorage = game:GetService("ReplicatedStorage")

local Ts = game:GetService("TweenService")
local Run = game:GetService("RunService")

local Player = Players.LocalPlayer
local Char = Player.Character or Player.CharacterAdded:Wait()
local Hum = Char:WaitForChild("Humanoid")
local Hrp = Char:WaitForChild("HumanoidRootPart")
local PGui = Player:WaitForChild("PlayerGui")

local Ui
local BgFrame
local frame = {
  Size = {0.5, 0.5},
  Pos = {0.25, 0.25},
  Col = {90, 90, 90},
  Trans = 0.15
}

function SetupUi()
  Ui = Instance.new("ScreenGui", PGui)
  Ui.Name = "Hub"
  Ui.Enabled = false
  BgFrame = Instance.new("Frame", Ui)
  BgFrame.Name = "BgFrame"
  BgFrame.Size = UDim2.fromScale(0, 0)
  BgFrame.Position = UDim2.fromScale(0.5, 0.5)
  BgFrame.BackgroundColor3 = Color3.fromRGB(90, 90, 90)
  BgFrame.BackgroundTransparency = 0.15
  local Uic = Instance.new("UICorner", BgFrame)
  Uic.CornerRadius = UDim.fromScale(0.04)
  local Uis = Instance.new("UIStroke", BgFrame)
  Uis.Color = Color3.fromRGB(65, 65, 65)
  Uis.Thickness = 4

  Ui.Enabled = true
  Ts:Create(BgFrame, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, {Size = UDim2.fromScale(frame.Size[1], frame.Size[2]), Position = UDim2.fromScale(frame.Pos[1], frame.Pos[2])}):Play()
end
  
SetupUi()
