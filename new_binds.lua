local awful = require('awful')
local hotkeys_popup = require('awful.hotkeys_popup').widget
require('awful.hotkeys_popup.keys')
local lain = require('lain')

local client_mod  = { 'Mod1' } -- Alt
local client_mod2 = { 'Mod1', 'Shift' }
local tag_mod     = { 'Mod4' } -- Super
local tag_mod2    = { 'Mod4', 'Shift' }
local layout_mod  = { 'Mod1', 'Shift', 'Control' } -- Meh key
local screen_mod  = { 'Shift' }

return {
    global = {
        -- Global keys
        {
            layout_mod, 'w', function() awful.util.mymainmenu:show() end,
            { description = 'show main menu', group = 'awesome' }
        },
        {
            layout_mod, 's', hotkeys_popup.show_help,
            { description = 'show help', group = 'awesome' },
        },
        -- Tag keys
        {
            tag_mod, 'Left', awful.tag.viewprev,
            { description = 'view previous', group = 'tag' }
        },
        {
            tag_mod, 'Right', awful.tag.viewnext,
            { description = 'view next', group = 'tag' }
        },
        {
            tag_mod, 'Escape', awful.tag.history_restore,
            { description = 'go back', group = 'tag' }
        },
        {
            tag_mod2, 'Left', function() lain.util.tag_view_nonempty(-1) end,
            { description = 'view previous nonempty', group = 'tag' }
        },
        {
            tag_mod2, 'Right', function() lain.util.tag_view_nonempty(1) end,
            { description = 'view next nonempty', group = 'tag' }
        },
        -- Layout keys
        {
            layout_mod, 'Up', function() awful.client.swap.byidx(1) end,
            { description = 'swap with next client by index', group = 'layout' },
        },
        {
            layout_mod, 'Down', function() awful.client.swap.byidx(-1) end,
            { description = 'swap with previous client by index', group = 'layout' },
        },
        -- Screen keys
        {
            screen_mod, 'Left', function() awful.screen.focus_relative(-1) end,
            { description = 'focus previous screen', group = 'screen' },
        },
        {
            screen_mod, 'Left', function() awful.screen.focus_relative(1) end,
            { description = 'focus next screen', group = 'screen' },
        },
        -- Client keys
        {
            client_mod2, 'Up', function() awful.client.focus.byidx(1) end,
            { description = 'focus next by index', group = 'client' },
        },
        {
            client_mod2, 'Down', function() awful.client.focus.byidx(-1) end,
            { description = 'focus previous by index', group = 'client' },
        },
        {
            client_mod, 'Up',
            function()
                awful.client.focus.global_bydirection('up')
                if client.focus then client.focus:raise() end
            end,
            { description = 'focus up', group = 'client' }
        },
        {
            client_mod, 'Down',
            function()
                awful.client.focus.global_bydirection('down')
                if client.focus then client.focus:raise() end
            end,
            { description = 'focus down', group = 'client' },
        },
        {
            client_mod, 'Left',
            function()
                awful.client.focus.global_bydirection('left')
                if client.focus then client.focus:raise() end
            end,
            { description = 'focus left', group = 'client' },
        },
        {
            client_mod, 'Right',
            function()
                awful.client.focus.global_bydirection('right')
                if client.focus then client.focus:raise() end
            end,
            { description = 'focus right', group = 'client' },
        },
        {
            client_mod, 'u', awful.client.urgent.jumpto,
            { description = 'jump to urgent client', group = 'client' },
        },
        {
            client_mod, 'Tab',
            function()
                awful.client.focus.history.previous()
                if client.focus then client.focus:raise() end
            end,
            { description = 'focus last client', group = 'client' },
        }

    },
    client = {

    },
}
