#!/usr/local/bin/lua

-- Description printed when running program
local Desc = ("Welcome to Tiummys lua Proxmark3 Project. \
Its intended to automate working with HF tags. \
Find me on GitHub - https://github.com/somefreak ")

function Sleep(seconds)
    local endTime = os.time() + seconds
    while os.time() < endTime do
    end
end

local function SearchCard()
	local CardInfo
	repeat
		if CardInfo == nil then
		Sleep(5)
		print("Looking...")
		CardInfo = core.console('hf search')
		else print("Found Something!")
		print(CardInfo)
		end
	until CardInfo ~= Valid
end


local function main()
-- this is the main logic of the program
-- print description
print(Desc)
-- run search for card
SearchCard()
end

-- execute main function to make the program actually do something
main()