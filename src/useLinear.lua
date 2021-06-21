local Flipper = require(script.Parent.Parent.Flipper)

local useGoal = require(script.Parent.useGoal)

local function useLinear(targetValue, options, hooks)
	return useGoal(Flipper.Linear.new(targetValue, options), hooks)
end

return useLinear