return {
  {
    "echasnovski/mini.pairs",
    opts = {
      mappings = {
        ["("] = { action = "open", pair = "()", neigh_pattern = "[^\\]\n" },
        [")"] = { action = "close", pair = "()", neigh_pattern = "[^\\]." },
        ["{"] = { action = "open", pair = "{}", neigh_pattern = "[^\\]\n" },
        ["}"] = { action = "close", pair = "{}", neigh_pattern = "[^\\]." },
        ["["] = false,
        ["]"] = false,
        ['"'] = false,
        ["'"] = false,
        ["`"] = false,
      },
    },
  },
}
