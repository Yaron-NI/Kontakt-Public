local root_path = Filesystem.parent_path(Filesystem.parent_path(Kontakt.script_path))
package.path = root_path .. "/?.lua;" .. package.path

local kUser = require("Modules.KUser")

Kontakt.colored_output = kUser.terminal_colored_output

local some_text = "best text ever"
local some_file = Kontakt.script_path .. Filesystem.preferred("/some_file.txt")

file = io.open(some_file,"w")
file:write(some_text)
io.close(file)