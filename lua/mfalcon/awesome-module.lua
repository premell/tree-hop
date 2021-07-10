local M = {} -- public interface

local function removeTextColor()

    vim.api.nvim_command('highlight NonText guifg=#FF5733')
    print('hello2')
    -- hello

    bufnr = bufnr or 0
    lang = vim.api.nvim_buf_get_option(bufnr, "ft")

    parser = vim.treesitter.get_parser(bufnr, lang)
    tstree = parser:parse()
    print(tstree)

end

local function foo()
    parse([[
    (@function.name)
  ]])
end

return removeTextColor
