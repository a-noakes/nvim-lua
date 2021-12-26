local null_ls = require("null-ls")

local sources = {
	null_ls.builtins.formatting.shfmt.with({
		extra_args = { "-i", "2", "-bn", "-ci", "-sr" },
	}),

	null_ls.builtins.diagnostics.shellcheck,
}

null_ls.setup({ sources = sources })