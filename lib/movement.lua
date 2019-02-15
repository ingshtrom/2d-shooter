local M = {}

-- save creating a bunch fo vectors and throwing them away
local tmp_vector = vmath.vector3()

-- move in a straight line towards a target position
-- pos {vmath.vector3()} the current position of the object that is being moved
-- t_pos {vmath.vector3()} the position of the target we want to move towards
-- speed {number} an arbitrary speed for the movement
-- dt {number} time delta for the current frame
-- return {vmath.vector3()} the next position
function M.towards_target_simple(pos, t_pos, speed, dt)
	tmp_vector.x = t_pos.x - pos.x
	tmp_vector.y = t_pos.y - pos.y
	local dir = vmath.normalize(tmp_vector)

	-- reset vector
	tmp_vector.x = 0
	tmp_vector.y = 0

	return pos + (dir * speed * dt)
end

return M
