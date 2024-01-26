return {
	{
		"mfussenegger/nvim-dap",
		dependencies = {
			"rcarriga/nvim-dap-ui",
		},

		config = function()
			local dap = require("dap")
			local dapui = require("dapui")
			dap.listeners.before.attach.dapui_config = function()
				dapui.open()
			end
			dap.listeners.before.launch.dapui_config = function()
				dapui.open()
			end
			dap.listeners.before.event_terminated.dapui_config = function()
				dapui.close()
			end
			dap.listeners.before.event_exited.dapui_config = function()
				dapui.close()
			end

      -- currently not working see nvim-dap repo to figure out
			dap.adapters["pwa-node"] = {
				type = "server",
				host = "localhost",
				port = 3005,
				executable = {
					command = "node",
					args = { "~/Downloads/js-debug/src/dapDebugServer.js", "${port}" },
				},
			}

			dap.configurations.javascript = {
				{
					type = "pwa-node",
					request = "launch",
					name = "Launch file",
					program = "${file}",
					cwd = "${workspaceFolder}",
				},
			}

			vim.keymap.set("n", "<Leader>dt", dap.toggle_breakpoint, {})
			vim.keymap.set("n", "<Leader>dc", dap.continue, {})
		end,
	},
}
