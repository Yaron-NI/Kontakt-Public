local root_path = Filesystem.parent_path(Kontakt.script_path)
package.path = Filesystem.parent_path(root_path) .. "/?.lua;" .. package.path

local kUser = require("Modules.KUser")

Kontakt.colored_output = kUser.terminal_colored_output

Kontakt.reset_multi(0)
if assert(Kontakt.get_num_instruments(0),0) then print ("Multi has been reset") end
