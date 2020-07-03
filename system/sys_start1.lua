bound = 1
run = '#01DF01'
stop = '#DF0101'

--[[local indus = {
    name = 'none',
    machine = nil,
    state = '',
    color = ''
}]]

info = {
    {
        name = 'none',
        machine = nil,
        state = '',
        color = ''
    },
    {
        name = 'none',
        machine = nil,
        state = '',
        color = ''
    },
    {
        name = 'none',
        machine = nil,
        state = '',
        color = ''
    },
    {
        name = 'none',
        machine = nil,
        state = '',
        color = ''
    }
}

info[1].name = 'line M'
info[1].machine = assembly_lineM
info[2].name = 'line S'
info[2].machine = assembly_lineS
info[3].name = 'refine'
info[3].machine = refine
info[4].name = 'chimic'
info[4].machine = chimical

replace = function(view, tabVal)
    local rep = ''
    for k, v in pairs(tabVal) do
        rep = '{{'..k..'}}'
        view = string.gsub(view, rep, v)
    end
    return view
end

eventClick = function(x, y, w, h, callback, antiBound) -- fait un side effect sur bound
    local mX = svgWidth * screen.getMouseX()
    local mY = svgHeight * screen.getMouseY()
    antiBound = antiBound or true
    
    if (screen.getMouseState() == 1 and mX >= x and mX <= x + w and mY >= y and mY <= y + h) then
        if (antiBound == true) then
            if (bound == 1) then
                bound = (bound == 1) and 0 or 1
                callback(mX, mY)
            end
        else
            callback(mX, mY)
        end
    else
        if (antiBound == true and bound == 0) then
            bound = (bound == 1) and 0 or 1
        end
    end
end

switch = function(test, acc)
    test = test or nil
    acc = acc or nil
    
    return {
        case = function(val, act) return switch(test, (val == test) and act() or acc) end,
        plage = function(val1, val2, act) return switch(test, (test >= val1 and test <= val2) and act() or acc) end,
        default = function(act) return (acc == nil) and act() or acc end
    }
end