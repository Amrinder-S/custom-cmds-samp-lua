script_name ( "customcommands" )
function main ( ) 
  if  not isSampLoaded ( )  or  not isSampfuncsLoaded ( )  then  return  end 
  while  not isSampAvailable ( )  do wait ( 100 )  end 
  sampRegisterChatCommand ( "gloves" , gloves ) 
  sampRegisterChatCommand ( "pat" , pat ) 
  sampRegisterChatCommand ( "eq" , equip ) 
  sampRegisterChatCommand ( "eqme" , equipme ) 
  sampRegisterChatCommand ( "eqhw" , equipmehw ) 
  	sampRegisterChatCommand("connect", conn)
	sampRegisterChatCommand("recon", recon)
	sampRegisterChatCommand("nick", name)
	sampRegisterChatCommand("t", swatwt)
	--sampRegisterChatCommand("r", rlow)
	sampRegisterChatCommand("gv", getveh)
	sampRegisterChatCommand("sh", shealth)
	sampRegisterChatCommand("sar", sarmour)
	sampRegisterChatCommand("hinge", hinge)
	sampRegisterChatCommand("chain", chain)
	sampRegisterChatCommand("legcuff", legcuff)
	sampRegisterChatCommand("hands", hands)
	sampRegisterChatCommand("tr", tr)
	sampRegisterChatCommand("service", service)
	sampRegisterChatCommand("smask", smask)
	sampRegisterChatCommand("shove", shove)
	sampRegisterChatCommand("buckle", buckle)
	sampRegisterChatCommand("pa", panic)
	sampRegisterChatCommand("bb", beanbag)
	sampRegisterChatCommand("lic", lic)
	sampRegisterChatCommand("rev", rev)
  wait ( - 1 )
end
function lic(arg)
local name = " "
	if arg ~= nil then
		if tonumber(arg) then
			if sampIsPlayerConnected(arg) then
					name = sampGetPlayerNickname(arg)
						name = name:gsub("_"," ")
				else
					name = "the suspect"
			end
		else
		name = arg
		end
	else
	name = "the suspect"
	end
	if name == '' then name = "the suspect" end
	sampSendChat("/me takes out the weapon license from "..arg.."'s pocket, she crosses on it and puts it in her pocket to revoke later.")
end

function lic(arg)
local name = arg
if arg==nil then name = "_" end
	sampSendChat("/revokelicense "..name.." weapon illegal brandishing of a weapon")
end

function beanbag()
sampSendChat("/trunk")
sampSendChat("/beanbag")
sampSendChat("/trunk")
end
function service()
sampSendChat("/carsign")
sampSendChat("/service")
end

function smask(arg)
local name = " "
	if arg ~= nil then
		if tonumber(arg) then
			if sampIsPlayerConnected(arg) then
					name = sampGetPlayerNickname(arg)
						name = name:gsub("_"," ")
				else
					name = "the suspect"
			end
		else
		name = arg
		end
	else
	name = "the suspect"
	end
	if name == '' then name = "the suspect" end
	sampSendChat("/me applies a split mask on "..arg.."'s face.")
end

function shove(arg)
local name = " "
	if arg ~= nil then
		if tonumber(arg) then
			if sampIsPlayerConnected(arg) then
					name = sampGetPlayerNickname(arg)
						name = name:gsub("_"," ")
				else
					name = "the suspect"
			end
		else
		name = arg
		end
	else
	name = "the suspect"
	end
	if name == '' then name = "the suspect" end
		sampSendChat("/me opens the rear door of the cruiser. He shoves "..name.." in the back door.")
end


function buckle(arg)
local name = " "
	if arg ~= nil then
		if tonumber(arg) then
			if sampIsPlayerConnected(arg) then
					name = sampGetPlayerNickname(arg)
						name = name:gsub("_"," ")
				else
					name = "the suspect"
			end
		else
		name = arg
		end
	else
	name = "the suspect"
	end
	if name == '' then name = "the suspect" end
		sampSendChat("/me pulls the strap of the seatbelt and helps "..name.." to buckle up.")
end

function tr()
sampSendChat("/taser")
end

function hands(hans)
arg = {}
for w in (hans..' '):gmatch("([^ ]*) ") do 
    table.insert(arg, w) 
end
if arg[1] == nil or #arg[1] == 0 then arg[1] = "the suspect" end
if arg[2] == 'm' then arg[2] = 'his'
elseif arg[2] == 'f' then
arg[2] = 'her'
else
arg[2] = 'their'
end
	sampSendChat(string.format("/me grasps %s's hands and pulls them behind %s back, holding both of %s's wrists with her left hand.", arg[1], arg[2], arg[1]))
end

function hinge(arg)
local name = " "
	if arg ~= nil then
		if tonumber(arg) then
			if sampIsPlayerConnected(arg) then
					name = sampGetPlayerNickname(arg)
						name = name:gsub("_"," ")
				else
					name = "the suspect"
			end
		else
		name = arg
		end
	else
	name = "the suspect"
	end
	sampSendChat(string.format("/me grabs S&W Hinge linked cuffs from her duty belt and applies them on %s's wrists.", name))
	end
	
	function chain(arg)
local name = " "
	if arg ~= nil then
		if tonumber(arg) then
			if sampIsPlayerConnected(arg) then
					name = sampGetPlayerNickname(arg)
						name = name:gsub("_"," ")
				else
					name = "the suspect"
			end
		else
		name = arg
		end
	else
	name = "the suspect"
	end
	sampSendChat(string.format("/me grabs S&W chain linked cuffs from her duty belt and applies them on %s's wrists.", name))
	end
	
function legcuff(arg)
local name = " "
	if arg ~= nil then
		if tonumber(arg) then
			if sampIsPlayerConnected(arg) then
					name = sampGetPlayerNickname(arg)
						name = name:gsub("_"," ")
				else
					name = "the suspect"
			end
		else
		name = arg
		end
	else
	name = "the suspect"
	end
	if name == '' then name = "the suspect" end
	sampSendChat(string.format("/me leg cuffs from her duty belt and applies them on %s's legs.", name))
	end
	
function shealth(arg)
sampSendChat("/sethealth "..tostring(arg))
end
function sarmour(arg)
sampSendChat("/setarmour "..tostring(arg))
end

 function rlow(arg)
 if arg == 'toggle' then
  sampSendChat("/r toggle")
 else
 sampSendChat("/rlow " .. arg)
 end
 
 end
function getveh(arg)
	sampSendChat("/getvehicle "..tostring(arg))
end
function gloves ( arg ) 
  if  # arg ==  0  then 
    sampSendChat ( string.format ( "/me takes out latex gloves from her pocket and wears them." , sampGetPlayerNickname ( sampGetPlayerIdByCharHandle ( playerPed ) )) ) 
  end 
end
function pat ( arg ) 
local name = " "
	if arg ~= nil then
		if tonumber(arg) then
			if sampIsPlayerConnected(arg) then
					name = sampGetPlayerNickname(arg)
						name = name:gsub("_"," ")
				else
					name = "the suspect"
			end
		else
		name = arg
		end
	else
	name = "the suspect"
	end
	if name == '' then name = "the suspect" end
	    sampSendChat ("/me searches "..name.." from head to toe.") 
end

function equip ( arg ) 
  local target = arg
	    sampSendChat ( string.format ( "/equip blskit 1 % s" , target) )
      sampSendChat ( string.format ( "/equip armour 1 % s" , target) )
      sampSendChat ( string.format ( "/equip mp5 250 % s" , target) )
      sampSendChat ( string.format ( "/equip shotgun 80 % s" , target) )
end

function equipme ( arg ) 
  local target = arg
	    sampSendChat ( string.format ( "/equip blskit 1 % s" , target) )
      sampSendChat ( string.format ( "/equip armour 1 % s" , target) )
      sampSendChat ( "/unequip mp5" )
      sampSendChat ( "/unequip pepper" )
      sampSendChat ( "/unequip night" )
      sampSendChat ( string.format ( "/equip m4 250 % s" , target) )
      sampSendChat ( "/equip pepper 300" )
      sampSendChat ( "/equip night" )
end

function equipmehw ( arg ) 
  local target = arg
		sampSendChat ( string.format ( "/equip blskit 1 % s" , target) )
		sampSendChat ( string.format ( "/equip armour 1 % s" , target) )
		sampSendChat ( string.format ( "/equip m4 250 % s" , target) )
		sampSendChat ( string.format ( "/equip sniper 30 % s" , target) )
		sampSendChat ( "/equip pepper 300" )
		sampSendChat ( "/equip night" )
end

function conn ( arg )
local host, port = arg:match("(%a+) (%a+)")
--sampConnectToServer(host, port)
if host == nil or port == nil then return sampAddChatMessage("invalid name", 0xDD0000) end
sampAddChatMessage("host:" .. host .. " port: " .. port, 0xDD0000)
end

function recon ()
local ip,port =  sampGetCurrentServerAddress()
sampConnectToServer(ip, port)
end

function name ( arg )
sampSetLocalPlayerName(arg)
end

function swatwt ( arg )
sampSendChat( "/wtlow 1 " .. arg)
end

function panic()
	sampSendChat("/panic")
end
