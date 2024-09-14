-- Русский Non-Fe Скрипт, Сделанный По Рофлу
-- Локальный скрипт для инжектора

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local workspace = game:GetService("Workspace")
local lighting = game:GetService("Lighting")
local Debris = game:GetService("Debris")
local SoundService = game:GetService("SoundService")

local soundIds = {
	291315892,
	8243331779,
	18204124897,
	5825214929,
	6114620153,
	6427919074,
	15641323951,
	4203251375
}

-- Изменение skybox
local skybox = Instance.new("Sky")
skybox.SkyboxBk = "rbxassetid://17534093372"
skybox.SkyboxDn = "rbxassetid://17534093372"
skybox.SkyboxFt = "rbxassetid://17534093372"
skybox.SkyboxLf = "rbxassetid://17534093372"
skybox.SkyboxRt = "rbxassetid://17534093372"
skybox.SkyboxUp = "rbxassetid://17534093372"
skybox.Parent = lighting

-- Функция для спавна больших частей
local function spawnPart()
	local part = Instance.new("Part")
	part.Size = Vector3.new(10, 10, 10) -- Размер части
	part.Position = Vector3.new(math.random(-100, 100), 100, math.random(-100, 100)) -- Случайная позиция
	part.Anchored = false -- Части не будут падать
	part.Parent = workspace
	Debris:AddItem(part, 10) -- Удаление части через 10 секунд
end

-- Функция для воспроизведения звуков
local function playSound()
	local sound = Instance.new("Sound")
	sound.SoundId = "rbxassetid://" .. tostring(soundIds[math.random(#soundIds)])
	sound.Volume = 999 -- Установите громкость на 1 (максимум 1)
	sound.Parent = workspace.LocalPlayer.Head
	sound:Play()
	Debris:AddItem(sound, 5) -- Удаление звука через 5 секунд
end

-- Основной цикл для спавна частей
spawnPart() -- Спавним первую часть сразу
while true do
	spawnPart()
	wait(0.5) -- Спавн части каждые 0.5 секунд
end

-- Основной цикл для воспроизведения звуков
while true do
	playSound()
	wait(5) -- Воспроизведение звука каждые 5 секунд
end
