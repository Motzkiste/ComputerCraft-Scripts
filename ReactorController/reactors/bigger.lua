BiggerReactor = {}
BiggerReactor.__index = BiggerReactor

function BiggerReactor:EnergyStored()
  return self.reactor.battery().stored()
end

function BiggerReactor:EnergyProducedLastTick()
  return self.reactor.battery().producedLastTick()
end

function BiggerReactor:EnergyCapacity()
  return self.reactor.battery().capacity()
end

function BiggerReactor:ControlRodLevel()
  return self.reactor.getControlRod(0).level()
end

function BiggerReactor:BurnedFuelLastTick()
  return self.reactor.fuelTank().burnedLastTick() / 1000
end

function BiggerReactor:CurrentWasteVolume()
  return self.reactor.fuelTank().waste()
end

function BiggerReactor:FuelTemperature()
  return self.reactor.fuelTemperature()
end

function BiggerReactor:CasingTemperature()
  return self.reactor.casingTemperature()
end