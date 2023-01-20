ExtremeReactor = {}
ExtremeReactor.__index = ExtremeReactor

function ExtremeReactor:GetEnergyStored()
  local energyStats = self.reactor.getEnergyStats()
  return energyStats.energyStored
end

function ExtremeReactor:EnergyProducedLastTick()
  local energyStats = self.reactor.getEnergyStats()
  return energyStats.EnergyProducedLastTick
end

function ExtremeReactor:EnergyCapacity()
  local energyStats = self.reactor.getEnergyStats()
  return energyStats.energyCapacity
end

function ExtremeReactor:ControlRodLevel()
  return self.reactor.getControlRodLevel(0)
end

function ExtremeReactor:BurnedFuelLastTick()
  local fuelStats = self.reactor.getFuelStats()
  return fuelStats.fuelConsumedLastTick / 1000
end

function ExtremeReactor:CurrentWasteVolume()
  return self.reactor.getWasteAmount()
end

function ExtremeReactor:FuelTemperature()
  return self.reactor.getFuelTemperature()
end

function ExtremeReactor:CasingTemperature()
  return self.reactor.getCasingTemperature()
end