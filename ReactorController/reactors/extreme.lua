ExtremeReactor = {}
ExtremeReactor.__index = ExtremeReactor

function ExtremeReactor:Start()
  self.reactor.setActive(true)
end

function ExtremeReactor:Stop()
  self.reactor.setActive(false)
end

function ExtremeReactor:GetStoredThisTick()
  local energyStats = self.reactor.getEnergyStats()
  return energyStats.energyStored
end