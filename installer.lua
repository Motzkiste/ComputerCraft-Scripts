local version = "1.0.0.alpha1"
print("INSTALLER "..version)

local main_url = "https://raw.githubusercontent.com/Motzkiste/ComputerCraft-Scripts/main/"

local function download(file)
  shell.run("wget "..main_url..file.." "..file)
end

print("creating dirs...")
shell.run("mkdir ReactorController/reactors")

print("downloading scripts...")
download("ReactorController/reactor_controller.lua")
download("ReactorController/reactor_class.lua")
download("ReactorController/reactors/big.lua")
download("ReactorController/reactors/bigger.lua")
download("ReactorController/reactors/extreme.lua")

print()
print("all done!")

sleep(2)