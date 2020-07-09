controllerMain = function()
    for k, v in pairs(info) do
        v.state = status(v.machine.getStatus())
        v.color = (v.state == 'RUN') and run or stop
        v.cycle = (v.state == 'RUN') and v.machine.getCycleCountSinceStartup() or 0
    end
    
    local val = {}
    
    for i = 1, #info do
        val['name'..i] = info[i].name
        val['state'..i] = info[i].state
        val['color'..i] = info[i].color
        val['cycle'..i] = info[i].cycle
    end
    
    return render(viewMain, val)
end

status = function(machine)
    return switch(machine)
    .case('RUNNING', function() return 'RUN' end)
    .case('JAMMED_MISSING_INGREDIENT', function() return 'MISS' end)
    .default(function() return 'STOP' end)
end