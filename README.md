# Mythic Engine Control
A small script that enables controlling the vehicle engine (F9 is default key), keep engine on while exiting car if engine was on, keeping door open while getting out if holding F, and having a hotwiring system that would require an event to allow a vehicles engine to run.

## How To Use:
Using this by itself will find you unable to start the engine unless you get in while it is already on, or get lucky and the hotwire / search for key succeed.

To add this to something like an item that is used to hotwire, simply make the following call in a client script

```lua
    TriggerEvent('mythic_engine:client:HotWired', vehicle)
```

Additionally you'll need to either add the following server events or modify the triggers to handle baseevent triggers.

```lua
RegisterServerEvent('baseevents:enteringVehicle')
AddEventHandler('baseevents:enteringVehicle', function(currentVehicle, currentSeat, displayname, netId)
	TriggerClientEvent('mythic_engine:client:PlayerEnteringVeh', source, currentVehicle, currentSeat, displayname, netId)
end)

RegisterServerEvent('baseevents:enteredVehicle')
AddEventHandler('baseevents:enteredVehicle', function(currentVehicle, currentSeat, displayname)
	TriggerClientEvent('mythic_engine:client:StartEngineListen', source, currentVehicle)
end)
```

NOTE : In this current form, this still has calls to my framework and created resources that are not available. If you do not know how to remove them, I'd suggest not using this. I am not in the business of converting stuff to ESX or vRP for people to copy & paste to their servers. If you don't know how to modify a resource to work on your server or don't have anyone that can, you shouldn't be running a server.