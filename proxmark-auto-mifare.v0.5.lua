#!/usr/local/bin/lua
-- Welcome to Tim's proxmark-auto-mifare LUA script. 
-- Please read the README
--
--
-- Libraries are loaded here
-- This one allows card reading/dumping
local reader14a = require('read14a')

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

function ReadCard()
	while not core.ukbhit() do
		Sleep(5)
		print("Looking...")
		CardInfo, err = reader14a.read14443a()
		-- this IF statement only works when CardInfo isn't nil
		if CardInfo then return CardInfo end
	end
end

local function main()
-- this is the main logic of the program
-- print description at start
print(Desc)
-- run search for card, returns CardInfo
ReadCard()
print("Card Found! Its details are")
for key,val in pairs(CardInfo) do
				print(tostring(key) .." = ".. tostring(val))
			end
end

-- execute main function to make the program actually do something
main()