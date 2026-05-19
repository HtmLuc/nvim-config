return {
  "gbprod/substitute.nvim",
  lazy = false,
  keys = {
    {
      "s",
      function() require("substitute").operator() end,
      mode = "n",
      desc = "Substitute with motion",
    },
    {
      "ss",
      function() require("substitute").line() end,
      mode = "n",
      desc = "Substitute line",
    },
    {
      "S",
      function() require("substitute").eol() end,
      mode = "n",
      desc = "Substitute to end of line",
    },
    {
      "s",
      function() require("substitute").visual() end,
      mode = "x",
      desc = "Substitute in visual mode",
    },
  },
  config = function()
    local substitute = require("substitute")
    substitute.setup()
  end,
}
