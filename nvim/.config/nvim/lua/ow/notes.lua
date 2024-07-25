require("obsidian").setup({
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
