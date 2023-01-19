Reactor = {}
Reactor.__index = Reactor

function Reactor:Create()
  local this = {
    version = "1.0.0.alpha1",
    reactor = nil
  }


  this.reactor = peripheral.find("BiggerReactors_Reactor")

  if (this.reactor  ~= nil) then
    require("reactors.bigger")
    setmetatable(this, BiggerReactor)
    return this
  end

  this.reactor = peripheral.find("bigger-reactor")

  if (this.reactor ~= nil) then
    require("reactors.big")
    setmetatable(this, BigReactor)
    return this
  end

  this.reactor = peripheral.find("BigReactors-Reactor")

  if (this.reactor ~= nil) then
    require("reactors.extreme")
    setmetatable(this, ExtremeReactor)
  end

  return this
end