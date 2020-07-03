controllerMain = function()
    for k, v in pairs(info) do
        v.state = status(v.machine.getStatus())
        v.color = (v.state == 'RUN') and run or stop
    end
    
    local val = {}
    
    for i = 1, 4 do
        val['name'..i] = info[i].name
        val['state'..i] = info[i].state
        val['color'..i] = info[i].color
    end
    
    return replace(viewMain, val)
end

status = function(machine)
    return switch(machine)
    .case('RUNNING', function() return 'RUN' end)
    .case('JAMMED_MISSING_INGREDIENT', function() return 'MISS' end)
    .default(function() return 'STOP' end)
end