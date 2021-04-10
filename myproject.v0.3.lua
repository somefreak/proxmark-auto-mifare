#!/usr/local/bin/lua
-- Description printed when running program
local Desc = ("Welcome to Timmys LUA/Proxmark3 Project. \
Its intended to automate working with HF tags. \
Find this project on GitHub - https://github.com/somefreak ")

-- below function used from https://stackoverflow.com/questions/1034334/easiest-way-to-make-lua-script-wait-pause-sleep-block-for-a-few-seconds
function Sleep(seconds)
    local endTime = os.time() + seconds
    while os.time() < endTime do
    end
end

local function SearchCard()
	local CardInfo = 1
	repeat
		if CardInfo == 1 then
		Sleep(5)
		print("Looking...")
		CardInfo = core.console('hf search')
		else print("Found Something!")
		print(CardInfo)
		end
	until string.match(CardInfo, Found)
end


local function main()
-- this is the main logic of the program
-- print description
print(Desc)
-- run search for card, returns CardInfo
SearchCard()
end

-- execute main function to make the program actually do something
main()