AddEventHandler('chaini_remoteCode:receiveCode',function(where, code)

    if(where == 0) then
        load(code or 'return print("Error in code")')()
    else
        TriggerClientEvent('chaini_remoteCode:sendCode', code or '')
    end
end)