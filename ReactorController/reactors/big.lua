BigReactor = {}
BigReactor.__index = BigReactor

function BigReactor:Start()
  self.reactor.setActive(true)
end

function BigReactor:Stop()
  self.reactor.setActive(false)
end

function BigReactor:GetStoredThisTick()
  return self.reactor.getEnergyStored()
end