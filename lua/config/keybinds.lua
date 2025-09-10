local wk = require("which-key")
local lazy = require("lazy")
--Command Line binds
vim.api.nvim_create_user_command("W", function()
    require("config.utils").sudo_write()
end, {})

local function sync_lazy_keys_to_whichkey()
    local keymaps = {}

    for _, plugin in pairs(lazy.plugins()) do
        if plugin.keys then
            for _, keybind in ipairs(plugin.keys) do
                if type(keybind) == "table" and keybind[1] and keybind.desc then
                    -- Insert a v3 spec entry: { key, command?, desc = "..." }
                    table.insert(keymaps, {
                        keybind[1],                 -- key
                        keybind[2],                 -- command (can be nil)
                        desc = keybind.desc,
                        mode = keybind.mode or "n", -- default to normal mode
                        silent = keybind.silent,
                        expr = keybind.expr,
                        remap = keybind.remap,
                    })
                end
            end
        end
    end

    -- Add any custom groups in v3 format (use group instead of name)
    -- Register all keys using v3 format
    wk.add(keymaps)
end

-- Ensure this is called after Lazy and plugins are loaded
sync_lazy_keys_to_whichkey()
