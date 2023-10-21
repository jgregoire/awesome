local awful = require('awful')
local hotkeys_popup = require('awful.hotkeys_popup').widget
require('awful.hotkeys_popup.keys')
local lain = require('lain')

local meh   = { 'Mod1', 'Shift', 'Control' }
local hyper = { 'Mod1', 'Mod4', 'Shift', 'Control' }
local super = { 'Mod4' }
local alt   = { 'Mod1' }

return {
    -- Awesome
    awful.key(super, 's', hotkeys_popup.showhelp, { description = 'show help', group = 'awesome' }),
    awful.key(super, 'w',
        function ()
            awful.util.mymainmenu:show()
        end,
        { description = 'show main menu', group = 'awesome' }
    ),

    -- Client
    awful.key({ 'Mod1', 'Control' }, 'Left', 
        function ()
            awful.client.focus.byidx(1)
        end, 
        { description = 'focus prev by index', group = 'client' }
    ),
    awful.key({ 'Mod1', 'Control' }, 'Right',
        function ()
            awful.client.focus.byidx(-1)
        end,
        { description = 'focus next by index', group = 'client' }
    ),
    awful.key(alt, 'Left',
        function ()
           awful.client.focus.global_bydirection('left')
           if client.focus then client.focus:raise() end
        end,
        { description = 'focus left', group = 'client' }
    ),
    awful.key(alt, 'Right',
        function ()
            awful.client.focus.global_bydirection('right')
            if client.focus then client.focus:raise() end
        end,
        { description = 'focus right', group = 'client' }
    ),
    awful.key(alt, 'Up',
        function ()
            awful.client.focus.global_bydirection('up')
            if client.focus then client.focus:raise() end
        end,
        { description = 'focus up', group = 'client' }
    ),
    awful.key(alt, 'Down',
        function ()
            awful.client.focus.global_bydirection('down')
            if client.focus then client.focus:raise() end
        end,
        { description = 'focus down', group = 'client' }
    ),
    awful.key({ 'Mod1', 'Shift' }, 'Left',
        function ()
            awful.client.swap.byidx(1)
        end,
        { description = 'swap with next client by index', group = 'client' }
    ),
    awful.key({ 'Mod1', 'Shift' }, 'Right',
        function ()
            awful.client.swap.byidx(-1)
        end,
        { description = 'swap with prev client by index', group = 'client' }
    ),

    -- Tag
    awful.key(super, 'Left',   awful.tag.viewprev,        { description = 'view previous', group = 'tag' }),
    awful.key(super, 'Right',  awful.tag.viewnext,        { description = 'view next', group = 'tag'}),
    awful.key(super, 'Escape', awful.tag.history.restore, { description = 'go back', group = 'tag' }),
    awful.key({ 'Mod4', 'Shift' }, 'Left',
        function () lain.util.tag_view_nonempty(-1) end,  { description = 'view prev nonempty', group = 'tag' }
    ),
    awful.key({ 'Mod4', 'Shift' }, 'Right',
        function () lain.util.tag_view_nonempty(1) end,   { description = 'view next nonempty', group = 'tag' }
    ),

    -- Screen
    awful.key(meh, 'Tab',
        function ()
            awful.screen.focus_relative(1)
        end,
        { description = 'focus next screen', group = 'screen' }
    ),
}
