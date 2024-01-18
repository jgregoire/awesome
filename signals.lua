---@diagnostic disable: undefined-global
-- Define a table of signals
local M = {
    client = {
        {
            'manage',
            function (c)
                -- set the windows at the slave,
                -- i.e. put it at the end of others instead of setting it master.
                if not awesome.startup then awful.client.setslave(c) end

                -- prevent clients from being unreachable after screen count changes
                if awesome.startup and
                    not c.size_hints.user_position
                    and not c.size_hints.program_position then
                    -- prevent clients from being unreachable after screen count changes.
                    awful.placement.no_offscreen(c)
                end
            end
        },
        -- { -- Add titlebar buttons. Replaced by 'nice' plugin
        --     'request::titlebars',
        --     function(c)
        --         -- custom
        --         if beautiful.titlebar_fun then
        --             beautiful.titlebar_fun(c)
        --             return
        --         end
        --
        --         -- default
        --         -- buttons for the titlebar
        --         local buttons = my_table.join(
        --             awful.button({ }, 1, function()
        --                 c:emit_signal("request::activate", "titlebar", {raise = true})
        --                 awful.mouse.client.move(c)
        --             end),
        --             awful.button({ }, 2, function() c:kill() end),
        --             awful.button({ }, 3, function()
        --                 c:emit_signal("request::activate", "titlebar", {raise = true})
        --                 awful.mouse.client.resize(c)
        --             end)
        --         )
        --
        --         awful.titlebar(c, {size = dpi(16)}) : setup {
        --             { -- left
        --                 awful.titlebar.widget.iconwidget(c),
        --                 buttons = buttons,
        --                 layout  = wibox.layout.fixed.horizontal
        --             },
        --             { -- middle
        --                 { -- title
        --                     align  = "center",
        --                     widget = awful.titlebar.widget.titlewidget(c)
        --                 },
        --                 buttons = buttons,
        --                 layout  = wibox.layout.flex.horizontal
        --             },
        --             { -- right
        --                 awful.titlebar.widget.floatingbutton (c),
        --                 awful.titlebar.widget.maximizedbutton(c),
        --                 awful.titlebar.widget.stickybutton   (c),
        --                 awful.titlebar.widget.ontopbutton    (c),
        --                 awful.titlebar.widget.closebutton    (c),
        --                 layout = wibox.layout.fixed.horizontal()
        --             },
        --             layout = wibox.layout.align.horizontal
        --         }
        --     end
        -- },
        { -- Focus follows mouse
            'mouse::enter',
            function(c)
                c:emit_signal('request::activiate', 'mouse_enter', { raise = true })
            end
        },
        {
            'focus',
            function(c)
                c.border_color = beautiful.border_focus
            end
        },
        {
            'unfocus',
            function(c)
                c.border_color = beautiful.border_normal
            end
        },
    },
    tag = {},
}
return M
