return {
  "glepnir/dashboard-nvim",
  config = function ()
    local db = require("dashboard")
    db.setup({
      theme = 'hyper',
      config = {
        header = {
          '',
          '',
          '',
          '',
          '',
          '8b    d8  dP"Yb   dP"Yb  88b 88 88  dP  dP"Yb  8888b.  88888 ',
          '88b  d88 dP   Yb dP   Yb 88Yb88 88odP  dP   Yb  8I  Yb   .dP ',
          '88YbdP88 Yb   dP Yb   dP 88 Y88 88"Yb  Yb   dP  8I  dY o `Yb ',
          '88 YY 88  YbodP   YbodP  88  Y8 88  Yb  YbodP  8888Y"  YbodP ',
          '',
          '',
          'Welcome M00nk0d3!',
          '',
          '',
          '',
        },
        shortcut = {
          { desc = '󰊳 Update', group = '@property', action = 'Lazy update', key = 'u' },
          {
            icon = ' ',
            icon_hl = '@variable',
            desc = 'Files',
            group = 'Label',
            action = 'Telescope find_files',
            key = 'f',
          },
        },
      },
    })

  end
}
