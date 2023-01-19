BiggerReactor = {}
BiggerReactor.__index = BiggerReactor

function BiggerReactor:Start()
  self.reactor.setActive(true)
end

function BiggerReactor:Stop()
  self.reactor.setActive(false)
end

function BiggerReactor:GetStoredThisTick()
  return self.reactor.battery().stored()
end