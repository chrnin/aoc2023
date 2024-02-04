require 'busted.runner' ()

package.path = package.path .. ";./?.lua"

describe("test part1", function()
  local part1 = require('part1')
  local result = part1.run("day1-test.txt")
  it("should have result 8 with test dataset", function()
    assert( result == 8, result)
  end)
end)

describe("test part2", function()
    local part2 = require('part2')
    local result = part2.run("day1-test.txt")
    it("should have result 8 with test dataset", function()
      assert( result == 2286, result)
    end)
  end)