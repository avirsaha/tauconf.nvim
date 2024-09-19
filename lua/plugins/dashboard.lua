return{
  'nvimdev/dashboard-nvim',
  dependencies = {'nvim-tree/nvim-web-devicons'},
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
	theme = 'hyper', --  theme is doom and hyper default is hyper
	disable_move = false,    --  default is false disable move keymap for hyper
	--shortcut_type   --  shorcut type 'letter' or 'number'
	shuffle_letter = true,  --  default is true, shortcut 'letter' will be randomize, set to false to have ordered letter.
	change_to_vcs_root = false, -- default is false,for open file in hyper mru. it will change to the root of vcs
	config = {
    header = {
[[ _                               __            _           ]],
[[| |                             / _|          (_)          ]],
[[| |_ __ _ _   _  ___ ___  _ __ | |_ _ ____   ___ _ __ ___  ]],
[[| __/ _` | | | |/ __/ _ \| '_ \|  _| '_ \ \ / / | '_ ` _ \ ]],
[[| || (_| | |_| | (_| (_) | | | | |_| | | \ V /| | | | | | |]],
[[ \__\__,_|\__,_|\___\___/|_| |_|_(_)_| |_|\_/ |_|_| |_| |_|]],
[[]],
    },

shortcut = {
    -- action can be a function type
    { desc = 'Highly customizable neovim config'},
  },
  packages = { enable = true }, -- show how many plugins neovim loaded
  -- limit how many projects list, action when you press key or enter it will run this action.
  -- action can be a functino type, e.g.
  -- action = func(path) vim.cmd('Telescope find_files cwd=' .. path) end
  project = { enable = false, limit = 8, icon = 'your icon', label = '', action = 'Telescope find_files cwd=' },
  mru = {enable = false, limit = 10, icon = 'your icon', label = '', cwd_only = false },
  footer = {[[]],
  [[]],
  [[]],
    [[The best tools are the ones that bend to your will,]],
  [[not the ones that force you to change your ways.]],
  [[                                                - a random tau]],}
}
}
  end,
}
