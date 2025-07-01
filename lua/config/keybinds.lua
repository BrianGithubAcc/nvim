local wk = require("which-key")
local lazy = require("lazy")

local function sync_lazy_keys_to_whichkey()
	local keymaps = {}

	for _, plugin in pairs(lazy.plugins()) do
		if plugin.keys then
			for _, keybind in ipairs(plugin.keys) do
				if type(keybind) == "table" and keybind[1] and keybind.desc then
					-- Insert a table { key, desc = description } instead of dictionary entry
					table.insert(keymaps, { keybind[1], desc = keybind.desc })
				end
			end
		end
	end

	-- Optional: group all <leader>f keys under "+find"
	wk.register({
		{ "<leader>f", name = "+find" },
	})

	-- Register all extracted keys with descriptions in new spec format
	wk.register(keymaps)
end

-- Call after lazy and which-key are loaded and plugins are set up
sync_lazy_keys_to_whichkey()
