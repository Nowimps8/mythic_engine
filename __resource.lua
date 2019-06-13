resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

name 'Mythic Engine'
description 'An engine script built for Mythic Framework - A Custom Framework built for MythicRP'
author 'Alzar - https://github.com/Alzar'
version 'v1.0.0'
url 'https://github.com/mythicrp/mythic_engine'

client_scripts {
    'client/main.lua'
}

exports {
    'Hotwire',
    'IsCarHotwired',
    'OutOfFuel',
    'Refueled',
    'IsVehFueled',
}