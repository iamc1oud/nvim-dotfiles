local status, telescope = pcall(require, 'telescope')

if (not status) then
    print('telescope is not installed')
    return
end

telescope.setup({
    defaults = {
        preview = false
    },
    pickers = {
        find_files = {
            theme = "dropdown",
            prompt_prefix = "👽"
        }
    }
})

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>1', builtin.find_files, {})
vim.keymap.set('n', '<leader>2', builtin.live_grep, {})
vim.keymap.set('n', '<leader>3', builtin.buffers, {})