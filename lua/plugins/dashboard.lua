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
          '#     #   ###     ###                   ###           #####  ',
          '##   ##  #   #   #   #  #    # #    #  #   #  #####  #     # ',
          '# # # # #     # #     # ##   # #   #  #     # #    #       # ',
          '#  #  # #     # #     # # #  # ####   #     # #    #  #####  ',
          '#     # #     # #     # #  # # #  #   #     # #    #       # ',
          '#     #  #   #   #   #  #   ## #   #   #   #  #    # #     # ',
          '#     #   ###     ###   #    # #    #   ###   #####   #####  ',
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
