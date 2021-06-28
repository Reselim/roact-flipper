local useMotor = require(script.Parent.useMotor)
local getBinding = require(script.Parent.getBinding)

local function getInitialValue(goal)
	if goal.step then
		return goal._targetValue
	else
		local initialValues = {}
		for key, motor in pairs(goal) do
			initialValues[key] = getInitialValue(motor)
		end
		return initialValues
	end
end

local function useGoal(goal, hooks)
	local motor = useMotor(getInitialValue(goal), hooks)
	motor:setGoal(goal)
	return getBinding(motor), motor
end

return useGoal