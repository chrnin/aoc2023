package.path = package.path .. ";./?.lua"
local part1 = require('part1')
local part2 = require('part2')

print("part1: ", part1.run('input.txt'))
print("part2: ", part2.run('input.txt'))