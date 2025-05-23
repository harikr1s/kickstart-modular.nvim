-- 🧠 💪 // Smart and powerful comment plugin for neovim. Supports treesitter, dot repeat, left-right/up-down motions, hooks, and more

return {
  'numToStr/Comment.nvim',
  opts = {
    ---Add a space b/w comment and the line
    padding = true,
    ---Whether the cursor should stay at its position
    sticky = true,
    ---Lines to be ignored while (un)comment
    ignore = nil,
    ---LHS of toggle mappings in NORMAL mode
    toggler = {
      ---Line-comment toggle keymap
      line = 'gcc',
      ---Block-comment toggle keymap
      block = 'gbc',
    },
    ---LHS of operator-pending mappings in NORMAL and VISUAL mode
    opleader = {
      ---Line-comment keymap
      line = 'gc',
      ---Block-comment keymap
      block = 'gb',
    },
    ---LHS of extra mappings
    extra = {
      ---Add comment on the line above
      above = 'gcO',
      ---Add comment on the line below
      below = 'gco',
      ---Add comment at the end of line
      eol = 'gcA',
    },
    ---Enable keybindings
    ---NOTE: If given `false` then the plugin won't create any mappings
    mappings = {
      ---Operator-pending mapping;
      ---Includes:
      ---`gcc`                -> line-comment   the current line
      ---`gbc`                -> block-comment  the current line
      ---`gc[count]{motion}`  -> line-comment   the region contained in {motion}
      ---`gb[count]{motion}`  -> block-comment  the region contained in {motion}
      basic = true,
      ---Extra mapping; `gco`, `gcO`, `gcA`
      extra = true,
    },
    ---Function to call before (un)comment
    -- can be used to determine the commentstring value
    pre_hook = nil,
    ---Function to call after (un)comment
    -- can be used to alter any formatting / newlines / etc. after commenting
    post_hook = nil,
    -- can be used to ignore certain lines when doing linewise motions
    -- can be string (lua regex)
    -- or functionc (that returns lua regex)
    ignore = nil,
  },
}
