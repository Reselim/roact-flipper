local Flipper = require(script.Parent.Parent.Flipper)

local useGoal = require(script.Parent.useGoal)

local function useLinear(hooks, targetValue, options)
	return useGoal(hooks, Flipper.Linear.new(targetValue, options))
end

return useLinear