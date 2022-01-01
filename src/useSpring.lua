local Flipper = require(script.Parent.Parent.Flipper)

local useGoal = require(script.Parent.useGoal)

local function useSpring(hooks, targetValue, options)
	return useGoal(hooks, Flipper.Spring.new(targetValue, options))
end

return useSpring