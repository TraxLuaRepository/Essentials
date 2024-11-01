local Cryptography = loadstring(game:HttpGet("https://raw.githubusercontent.com/TraxLuaRepository/Essentials/refs/heads/main/Shufflelibrary/ShuffleLib"))()

local Examplestr = "Hello! My name is Trax! I am very good at Cryptography? Did you know this algorithm although simple, without the shuffle is NEARLY uncrackable!"

local ExampleStrTable = Cryptography.GenerateGenesisShuffle(Examplestr, math.random(15,20)) 

local randomShuffleOrder = Cryptography.generateShuffle(#ExampleStrTable)

local shuffledOutput = Cryptography.shuffle(ExampleStrTable, randomShuffleOrder)

warn("\n --Shuffled Output--")
for _, str in ipairs(shuffledOutput) do
    warn(str)
end
local unshuffledOutput = Cryptography.unshuffle(shuffledOutput, randomShuffleOrder)

print("\n --Unshuffled Output-- ")
for _, str in ipairs(unshuffledOutput) do
    print(str)
end

-- DOCUMENTATION!

--[[
GenerateGenesisShuffle(String, Parts)
> Splits string into a table for Shuffles
EX: print(GenerateGenesisShuffle("Hello!", 5))
< Splits into 5 Parts and (table: 0x???????)

generateShuffle(Table)
> Generates a randomized shuffle for the genesisShuffle
EX: local Shuffle = generateShuffle(Shuffle)
< Becomes like {5,3,2,4,1}

shuffle(Table, Order)
> Shuffles the tables contents
EX: Really none
< POC Can prove

unshuffle(Table, Order)
> Unshuffles shuffled input
EX: None
< POC Can prove


]]
