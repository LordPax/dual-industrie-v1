bound = 1
run = '#01DF01'
stop = '#DF0101'

Indus = {
    name = 'none',
    machine = nil,
    state = '',
    color = ''
}

function Indus:new(o)
    o = o or {}
    setmetatable(o, self)
    self.__index = self
    return o
end

function Indus:init(name, machine)
    name = name or 'none'
    machine = machine or nil
    self.name = name
    self.machine = machine
end

info = {
    Indus:new(nil),
    Indus:new(nil),
    Indus:new(nil),
    Indus:new(nil),
    Indus:new(nil),
    Indus:new(nil)
}

info[1]:init('line M', assembly_lineM)
info[2]:init('line S', assembly_lineS)
info[3]:init('line XS', assembly_lineXS)
info[4]:init('refine', refine)
info[5]:init('chimic', chimical)
info[6]:init('electro', electro)

render = function(view, tabVal)
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