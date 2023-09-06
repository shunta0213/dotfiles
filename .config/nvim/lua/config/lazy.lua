require('lazy').setup({
  spec = {
		{ import = 'plugins.core' }
	},
  defaults = { lazy = true, version = '*' },
  install = {},
  checker = { enabled = true },
  performance = {
    rtp = {
      disabled_plugins = {
        'gzip',
        'matchit',
        'matchparen',
        'netrwPlugin',
        'tarPlugin',
        'tohtml',
        'tutor',
        'zipPlugin',
      },
    },
  },
})
