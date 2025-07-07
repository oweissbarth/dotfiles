require("obsidian").setup({
  ui = False,
  workspaces = {
    {
      name = "work",
      path = "~/notes/"
    },
    {
      name = "personal",
      path = "~/personal/"
    }
  },


  daily_notes = {
    date_format = "%Y-%m-%d",
    alias = "%Y-%m-%d"
  }
})

require("render-markdown").setup({
  bullet = {
    right_pad = 1,
  }
})
