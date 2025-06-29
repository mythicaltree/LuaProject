local messenger = {
    fifo = "/home/mythicaltree/LuaProject/chat.fifo"
}

function messenger:sleep(sec)
    local t = os.clock()
    while os.clock() - t < sec do end
end

function messenger:send(file)
    local text = io.open(file, "r"):read("*a")
    local pipe = io.open(self.fifo, "w")
    pipe:write(text)
    pipe:close()
    self:sleep(1)
end

function messenger:listen()
    local pipe = io.open(self.fifo, "r")
    print("\nПолучено сообщение:")
    for line in pipe:lines() do
        print(line)
    end
    pipe:close()
    self:sleep(1)
end

return messenger