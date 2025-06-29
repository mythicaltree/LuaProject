-- Скрипт выводит текст сообщения, полученный
-- через мессенджер на основе FIFO-буфера
-- Затем, через 2 сек., отправляет ответ.

local messenger = require "lib.messenger"
local lyric = "lyric/kish.txt"

messenger:listen()
messenger:sleep(2)
messenger:send(lyric)

