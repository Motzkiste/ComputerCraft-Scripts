Reactor = {}
Reactor.__index = Reactor

function Reactor:Create()
  local this = {
    version = "1.0.0.alpha1",
    reactor = nil,
    running = false
  }

  --starts the reactor
  function this:Start()
    self.reactor.setActive(true)
    self.running = true
  end

  --stops the reactor
  function this:Stop()
    self.reactor.setActive(false)
    self.running = false
  end

  function this:IsReactorRunning()
    return self.running
  end

  function this:SetControlRodLevel(level)
    self.reactor.setAllControlRodLevels(level)
  end

  local reactorFile = function (file)
    return "ReactorController.reactors."..file
  end

  this.reactor = peripheral.find("BiggerReactors_Reactor")

  if (this.reactor  ~= nil) then
    require(reactorFile("bigger"))
    setmetatable(this, BiggerReactor)
    return this
  end

  this.reactor = peripheral.find("bigger-reactor")

  if (this.reactor ~= nil) then
    require(reactorFile("big"))
    setmetatable(this, BigReactor)
    return this
  end

  this.reactor = peripheral.find("BigReactors-Reactor")

  if (this.reactor ~= nil) then
    require(reactorFile("extreme"))
    setmetatable(this, ExtremeReactor)
  end

  if (this.reactor ~= nil) then
    this:Stop()
  end

  return this
end