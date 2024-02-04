require 'busted.runner' ()

package.path = package.path .. ";./?.lua"
local common = require("common")

describe("test startsWith", function()
  local test = "abcdefghijklmnop"
  it("should start with abc", function()
    local result = common.startsWith(test, "abc")
    assert(result, true)
  end)
  it("should not start with bcd", function()
    local result = common.startsWith(test, "abc")
    assert(result, true)
  end)
end)