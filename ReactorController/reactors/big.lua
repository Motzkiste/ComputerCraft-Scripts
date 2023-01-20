BigReactor = {}
BigReactor.__index = BigReactor

function BigReactor:GetEnergyStoredThisTick()
  return self.reactor.getEnergyStored()
end

function BigReactor:EnergyProducedLastTick()
  return self.reactor.getEnergyProducedLastTick()
end

function BigReactor:ControlRodLevel()
  return self.reactor.getControlRodLevel(0)
end

function BigReactor:BurnedFuelLastTick()
  return self.reactor.getFuelConsumedLastTick() / 1000
end

function BigReactor:CurrentWasteVolume()
  return self.reactor.getWasteAmount()
end

function BigReactor:FuelTemperature()
  return self.reactor.getFuelTemperature()
end

function BigReactor:CasingTemperature()
  return self.reactor.getCasingTemperature()
end