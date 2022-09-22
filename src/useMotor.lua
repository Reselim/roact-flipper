local Flipper = require(script.Parent.Parent.Flipper)

local function createMotor(initialValue)
	local initialValueType = type(initialValue)
	if initialValueType == "number" then
		return Flipper.SingleMotor.new(initialValue)
	elseif initialValueType == "table" then
		return Flipper.GroupMotor.new(initialValue)
	else
		error(("Invalid type for initialValue. Expected \"number\" or \"table\", got \"%s\""):format(initialValueType))
	end
end

local function useMotor(hooks, initialValue)
	local motor = hooks.useValue(createMotor(initialValue)).value
	hooks.useEffect(function ()
		return function ()
			motor:destroy()
		end
	end, {})
	return motor
end

return useMotor