local Roact = require(script.Parent.Parent.Roact)
local Flipper = require(script.Parent.Parent.Flipper)

local AssignedBinding = require(script.Parent.AssignedBinding)

local function getBinding(motor)
	assert(motor, "Missing argument #1: motor")
	
	local isMotor = Flipper.isMotor(motor)
	if not isMotor then
		error("Provided value is not a motor!", 2)
	end

	if motor[AssignedBinding] then
		return motor[AssignedBinding]
	end

	local binding, setBindingValue = Roact.createBinding(motor:getValue())
	motor:onStep(setBindingValue)

	motor[AssignedBinding] = binding
	return binding
end

return getBinding