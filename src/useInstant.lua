local Flipper = require(script.Parent.Parent.Flipper)

local useGoal = require(script.Parent.useGoal)

local function useInstant(targetValue, hooks)
	return useGoal(Flipper.Instant.new(targetValue), hooks)
end

return useInstant