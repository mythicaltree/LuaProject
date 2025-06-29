-- Скрипт отправляет текст сообщения построчно,
-- используя мессенджер на основе FIFO-буфера
-- Затем, через 2 сек., слушает ответ 

local messenger = require "lib.messenger"
local lyric = "lyric/pushkin.txt"

messenger:send(lyric)
messenger:sleep(2)
messenger:listen()