-- ref: https://github.com/hetima/hammerspoon-foundation_remapping
local FRemap = require('foundation_remapping')
local remapper = FRemap.new({vendorID=0x29ea, productID=0x800b}) -- apply keymap only to Kinesis Freestyle2 MAC - KB800

remapper:remap('rcmd', 'rctrl') -- remap CmdRight to ctrl key
remapper:register()

-- install spoons: https://www.hammerspoon.org/Spoons/index.html
hs.loadSpoon("SpoonInstall")
spoon.SpoonInstall:andUse("ArrangeDesktop")
spoon.SpoonInstall:andUse("Calendar")

require('reload')