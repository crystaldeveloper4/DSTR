--[[

Rocket Script
This Script Is Open-Source
Free Use
Made By Fluxuxu (crystaldeveloper4)

]]









local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

-- Функция для создания хинта
local function createHint()
	local hint = Instance.new("Hint")
	hint.Text = "made by fluxuxu (crystaldeveloper4)"
	hint.Parent = game.Workspace

	-- Удаляем хинт через 3 секунды
	wait(1)
	hint:Destroy()
end

-- Функция для создания взрыва
local function createExplosion()
	-- Создаем взрыв
	local explosion = Instance.new("Explosion")
	explosion.Position = humanoidRootPart.Position
	explosion.BlastRadius = 0 -- Устанавливаем радиус взрыва
	explosion.BlastPressure = 0 -- Устанавливаем давление взрыва
	explosion.Parent = game.Workspace

	-- Подбрасываем игрока
	local bodyVelocity = Instance.new("BodyVelocity")
	bodyVelocity.Velocity = Vector3.new(0, 500, 0) -- Устанавливаем скорость вверх
	bodyVelocity.MaxForce = Vector3.new(0, math.huge, 0) -- Ограничиваем силу только по оси Y
	bodyVelocity.Parent = humanoidRootPart

	-- Удаляем BodyVelocity через 0.5 секунды
	wait(0.01)
	bodyVelocity:Destroy()
end

-- Создаем хинт
createHint()

-- Бесконечный цикл для создания взрывов
while true do
	createExplosion()
	wait(0.01) -- Задержка между взрывами (можно изменить по желанию)
end
