package.loaded['mfalcon'] = nil
package.loaded['mfalcon.awesome-module'] = nil
package.loaded['dev'] = nil

vim.api.nvim_set_keymap("n", ",r", ":luafile dev/init.lua<cr>", {})

MFalcon = require('mfalcon')

vim.api.nvim_set_keymap("n", ",w", ':lua MFalcon.removeTextColor()<cr>', {})

