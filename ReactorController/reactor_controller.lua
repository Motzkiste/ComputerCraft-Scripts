require("ReactorController/reactor_class")

local reactor = Reactor:Create()
local maxBuffer = 70
local minBuffer = 30
local targetBuffer = (maxBuffer - minBuffer) / 2 + minBuffer

while true do
  if (reactor:IsReactorRunning() and reactor["EnergyCapacity" ~= nil]) then --TODO BigReactors capactiy workaraound
    local capacity = reactor:EnergyCapacity()

    local maxBufferRF = maxBuffer / 100 * capacity
    local minBufferRF = minBuffer / 100 * capacity
    local targetBufferRF = targetBuffer / 100 * capacity

    local rodLevel = 0
    local currentBufferRF = reactor:GetEnergyStored()
    if (currentBufferRF > minBufferRF) then
      if (currentBufferRF > targetBufferRF) then
        rodLevel = 100
      else
        rodLevel = (currentBufferRF / targetBufferRF) * 100
      end
    end

    reactor:SetControlRodLevel(rodLevel)

    shell.run("clear")
    print("Produced "..reactor:EnergyProducedLastTick().." RF/t")
    print("Currently Stored: "..reactor:GetEnergyStored().." RF")
    print("Rod-Level: "..rodLevel.."%")
  end

  sleep(1)
end