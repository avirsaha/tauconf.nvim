--[[
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⠀⠀⠀⠀
What is Tauconf?

  Tauconf.nvim is *your* personalized Neovim configuration, built to make
  your workflow smoother, faster, and more enjoyable. It’s lightweight,
  modular, and designed to be customized by you.

  Whether you're a seasoned Neovim user or someone exploring it for the first time,
  this config is designed to help you code efficiently without the distractions of
  unnecessary complexity. Everything here is fine-tuned for clarity and ease of use.

How to use Tauconf:

  - This configuration is not set in stone. It’s here to be reshaped as you evolve.
    Dive in, tweak, and modify it until it matches exactly how you like to work.

  - If Lua is new to you, don’t worry. It's a simple and powerful language.
    Here’s a fast intro to get you started:
    https://learnxinyminutes.com/docs/lua/
    Or use Neovim’s Lua help by typing: `:help lua-guide`

  - If you’re still learning Neovim’s ropes, start with the `:Tutor` command.
    It’s a quick and interactive guide that will make you comfortable with
    the basics.

  - This config includes plenty of helpful comments. I’ve added `:help X` pointers
    wherever something could use further exploration. Don’t hesitate to look these up,
    they'll give you deeper insights into how Neovim works.

Tips to make the most of it:

  - Use `<space>sh` to search Neovim’s help docs quickly. It’ll save you a ton of time.

  - Take the time to explore the keymaps, plugins, and settings. You’ll find
    that everything has been set up to help you code faster and more comfortably.

  - If something feels off or breaks, run `:checkhealth`. It’s a great built-in tool
    for diagnosing issues.

  - Above all, make this your own. Tauconf is just the starting point, so feel free
    to add new features, change plugins, or rework anything you like.

Enjoy the process of crafting your perfect coding environment!

Happy coding,
- Aviraj Saha

P.S. Once you’re familiar with everything, you can delete this message. It’s your config now!
--]]
-- Set up Neovim settings
require 'settings'

-- Load plugins
require 'lazy-setup'
-- require 'lsp.servers'

-- Set up key mappings
require 'keymaps'

require 'lsp.servers'

-- Optionally, you can add more configuration files as needed
-- For example, if you have a specific configuration file for different plugins,
-- you can require them here:
-- require('plugins/lualine')
