return {
	{
		"mfussenegger/nvim-dap",
		config = function()
			local dap = require("dap")
			local ui = require("dapui")
			ui.setup()
			dap.adapters.debugpy = {
				type = "executable",
				command = os.getenv("HOME") .. "/anaconda3/envs/wslpython310/bin/python",
				args = { "-m", "debugpy.adapter" },
			}
			dap.debugpy = {
				type = "executable",
				command = os.getenv("HOME") .. "/anaconda3/envs/wslpython310/bin/python",
				args = { "-m", "debugpy.adapter" },
			}
			dap.configurations.python = {
				{
					type = "debugpy",
					request = "launch",
					name = "Launch file",
					program = "${file}",
					pythonPath = function()
						return "/home/dhm//anaconda3/envs/wslpython310/bin/python"
					end,
				},
			}
			-- 查看光标指向的变量
			vim.keymap.set("n", "<leader>t", function()
				ui.eval(nil, { enter = true })
			end)
			vim.keymap.set("n", "<leader>B", dap.toggle_breakpoint)
			vim.keymap.set("n", "<leader>gB", dap.run_to_cursor)
			vim.keymap.set("n", "<F1>", dap.continue)
			vim.keymap.set("n", "<F2>", dap.step_into)
			vim.keymap.set("n", "<F3>", dap.step_over)
			vim.keymap.set("n", "<F4>", dap.step_out)
			vim.keymap.set("n", "<F5>", dap.restart)
			dap.listeners.before.attach.dapui_config = function()
				ui.open()
			end
			dap.listeners.before.launch.dapui_config = function()
				ui.open()
			end
			dap.listeners.before.event_terminated.dapui_config = function()
				ui.close()
			end
			dap.listeners.before.event_exited.dapui_config = function()
				ui.close()
			end
		end,
	},
	{ "rcarriga/nvim-dap-ui", dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" } },
}
