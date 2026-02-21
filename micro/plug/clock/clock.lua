local micro = import("micro")
local time = import("time")

function init()
	updateTimeStamp()
	micro.SetStatusInfoFn("clock.status")
end

local ts = nil

function updateTimeStamp()
	ts = time.Now():Format("15:04")
	micro.After(60000000000, updateTimeStamp)
end

function status()
	return ts
end
