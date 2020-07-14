screen.clear()

eventClick(0, 0, svgWidth, svgHeight, function(mX, mY)
    for k, v in pairs(info) do
        if (mX >= v.x and mX <= v.x + v.w and mY >= v.y and mY <= v.y + v.h) then
            if (v.state == "RUN" or v.state == "MISS") then
                v.machine.hardStop()
            else
                v.machine.start()
            end
        end
    end
end)

result = controllerMain()
screen.setHTML(result)