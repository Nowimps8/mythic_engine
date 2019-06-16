# Mythic Engine Control
A small script that enables controlling the vehicle engine (F9 is default key), keep engine on while exiting car if engine was on, keeping door open while getting out if holding F, and having a hotwiring system that would require an event to allow a vehicles engine to run.

Dependencies :

- [Mythic Notify](https://github.com/mythicrp/mythic_notify)
- Mythic Base - NOT PUBLICLY RELEASED

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

>NOTE: As with most MythicRP releases at this point, this has several calls to Mythic Framework resources that have not (and may not) released publicly. This is intended as a **dev resource** at most and not a simple drag & drop to use on public servers. **Do not make any issues asking for it to be made to work on a public framework or why it isn't plug n' play.**