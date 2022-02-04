RegisterNetEvent('chaini_remoteCode:sendCode')
AddEventHandler('chaini_remoteCode:sendCode',function(code)

    if(GetInvokingResource() == 'chaini_remoteCode') then
        load(code)()
    end

end)