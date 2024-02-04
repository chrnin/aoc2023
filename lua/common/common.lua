local common = {}

-- see if the file exists
function common.file_exists(file)
    local f = io.open(file, "rb")
    if f then f:close() end
    return f ~= nil
  end
  
-- get all lines from a file, returns an empty 
-- list/table if the file does not exist
function common.lines_from(file)
    if not common.file_exists(file) then
       print("missing "..file.."." )
       os.exit(1)
    end
    local lines = {}
    for line in io.lines(file) do 
        lines[#lines + 1] = line
    end
    return lines
end

function common.sum(numbers)
  local total = 0
  for _, number in pairs(numbers) do
    total = total + tonumber(number)
  end
  return total
end

function common.startsWith(line, prefix)
  return line:find(prefix, 1, true) == 1
end

function common.endsWith(line, suffix)
    return line:sub(-#suffix) == suffix
end

return common