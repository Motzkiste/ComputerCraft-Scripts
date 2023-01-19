Reactor = {}
Reactor.__index = Reactor

function Reactor:Create()
  local reactor = peripheral.find("BiggerReactors_Reactor")

  local this = { reactor = reactor }

  setmetatable(this, Reactor)

  return this
end

function Reactor:Version()
  return "1.0.0.alpha1"
end

function Reactor:Start()
  reactor.setActive(true)
end

function Reactor:Stop()
  reactor.setActive(false)
end