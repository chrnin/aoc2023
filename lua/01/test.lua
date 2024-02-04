require 'busted.runner' ()

package.path = package.path .. ";./?.lua"

describe("test part1", function()
  local part1 = require('part1')
  local result = part1.run("day1-test.txt")
  it("should have result 142 for part1 and test dataset", function()
    assert( result == 142, "noooooo")
  end)
end)


describe("test part2", function()
  local part2 = require('part2')
  local result = part2.run("day2-test.txt")
  it("should have result 281 for part2 and test dataset", function()
    assert( result == 281, result )
  end)
end)