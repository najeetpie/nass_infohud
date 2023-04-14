RegisterCallback('nass_infohud:getPlayerAvatar',function(source, cb)
    cb(exports["Badger_Discord_API"]:GetDiscordAvatar(source))
end)