local day1 = {}

local isalnum = function(str)
	return str:match("%d") ~= nil
end

-- return first and last number
function day1.firstAndLast(line)
  local first = "0"
  local second = "0"
  for i=1, #line do
    local char = line:sub(i,i)
    if isalnum(char) then
      if first == "0" then
        first = char
        second = char
      else
        second = char
      end
    end
  end
  return first, second
end

return day1