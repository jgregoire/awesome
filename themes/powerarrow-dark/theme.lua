--[[

     Powerarrow Dark Awesome WM theme
     github.com/lcpz

--]]

local gears = require("gears")
local lain  = require("lain")
local awful = require("awful")
local wibox = require("wibox")
local dpi   = require("beautiful.xresources").apply_dpi

--local base16 = require("base16-material-darker.lua")

--local boop = base16.base07

local os = os
local my_table = awful.util.table or gears.table -- 4.{0,1} compatibility

local theme                                     = {}

local base16materialdarker = {
	base00 = "#212121", -- ----
	base01 = "#303030", -- ---
	base02 = "#353535", -- --
	base03 = "#4A4A4A", -- -
	base04 = "#B2CCD6", -- +
	base05 = "#EEFFFF", -- ++
	base06 = "#EEFFFF", -- +++
	base07 = "#FFFFFF", -- ++++
	base08 = "#F07178", -- red
	base09 = "#F78C6C", -- orange
	base0A = "#FFCB6B", -- yellow
	base0B = "#C3E88D", -- green
	base0C = "#89DDFF", -- aqua/cyan
	base0D = "#82AAFF", -- blue
	base0E = "#C792EA", -- purple
	base0F = "#FF5370", -- brown
}

local base16blackmetalvenom = {
	base00 = "#000000", -- ----
	base01 = "#121212", -- ---
	base02 = "#222222", -- --
	base03 = "#333333", -- -
	base04 = "#999999", -- +
	base05 = "#c1c1c1", -- ++
	base06 = "#999999", -- +++
	base07 = "#c1c1c1", -- ++++
	base08 = "#5f8787", -- red
	base09 = "#aaaaaa", -- orange
	base0A = "#79241f", -- yellow
	base0B = "#f8f7f2", -- green
	base0C = "#aaaaaa", -- aqua/cyan
	base0D = "#888888", -- blue
	base0E = "#999999", -- purple
	base0F = "#444444", -- brown
}
--}}

--{{ base16-railscasts theme
local base16railscasts = {
	base00 = "#2b2b2b", -- ----
	base01 = "#272935", -- ---
	base02 = "#3a4055", -- --
	base03 = "#5a647e", -- -
	base04 = "#d4cfc9", -- +
	base05 = "#e6e1dc", -- ++
	base06 = "#f4f1ed", -- +++
	base07 = "#f9f7f3", -- ++++
	base08 = "#da4939", -- red
	base09 = "#cc7833", -- orange
	base0A = "#ffc66d", -- yellow
	base0B = "#a5c261", -- green
	base0C = "#519f50", -- aqua/cyan
	base0D = "#6d9cbe", -- blue
	base0E = "#b6b3eb", -- purple
	base0F = "#bc9458", -- brown
}
--}}

theme.palette = base16railscasts

theme.dir                                       = os.getenv("HOME") .. "/.config/awesome/themes/powerarrow-dark"
theme.wallpaper                                 = theme.dir .. "/wall.jpg"
theme.font                                      = "Iosevka Term Extended 11"
theme.fg_normal                                 = theme.palette.base05
theme.fg_focus                                  = theme.palette.base08
theme.fg_urgent                                 = theme.palette.base09
theme.bg_normal                                 = theme.palette.base01
theme.bg_focus                                  = theme.palette.base02
theme.bg_urgent                                 = theme.palette.base01
theme.border_width                              = dpi(1)
theme.border_normal                             = theme.palette.base02
theme.border_focus                              = theme.palette.base03
theme.border_marked                             = theme.palette.base09
theme.tasklist_bg_focus                         = theme.palette.base01
theme.titlebar_bg_focus                         = theme.bg_normal
theme.titlebar_bg_normal                        = theme.bg_normal
theme.titlebar_fg_focus                         = theme.fg_focus
theme.menu_height                               = dpi(16)
theme.menu_width                                = dpi(140)
theme.menu_submenu_icon                         = theme.dir .. "/icons/submenu.png"
theme.taglist_squares_sel                       = theme.dir .. "/icons/square_sel.png"
theme.taglist_squares_unsel                     = theme.dir .. "/icons/square_unsel.png"
theme.layout_tile                               = theme.dir .. "/icons/tile.png"
theme.layout_tileleft                           = theme.dir .. "/icons/tileleft.png"
theme.layout_tilebottom                         = theme.dir .. "/icons/tilebottom.png"
theme.layout_tiletop                            = theme.dir .. "/icons/tiletop.png"
theme.layout_fairv                              = theme.dir .. "/icons/fairv.png"
theme.layout_fairh                              = theme.dir .. "/icons/fairh.png"
theme.layout_spiral                             = theme.dir .. "/icons/spiral.png"
theme.layout_dwindle                            = theme.dir .. "/icons/dwindle.png"
theme.layout_max                                = theme.dir .. "/icons/max.png"
theme.layout_fullscreen                         = theme.dir .. "/icons/fullscreen.png"
theme.layout_magnifier                          = theme.dir .. "/icons/magnifier.png"
theme.layout_floating                           = theme.dir .. "/icons/floating.png"
theme.layout_centerwork							= theme.dir .. "/icons/centerwork.png"
theme.layout_centerworkh						= theme.dir .. "/icons/centerworkh.png"
theme.layout_termfair							= theme.dir .. "/icons/termfair.png"
theme.layout_centerfair							= theme.dir .. "/icons/centerfair.png" 
theme.widget_ac                                 = theme.dir .. "/icons/ac.png"
theme.widget_battery                            = theme.dir .. "/icons/battery.png"
theme.widget_battery_low                        = theme.dir .. "/icons/battery_low.png"
theme.widget_battery_empty                      = theme.dir .. "/icons/battery_empty.png"
theme.widget_mem                                = theme.dir .. "/icons/mem.png"
theme.widget_cpu                                = theme.dir .. "/icons/cpu.png"
theme.widget_temp                               = theme.dir .. "/icons/temp.png"
theme.widget_net                                = theme.dir .. "/icons/net.png"
theme.widget_hdd                                = theme.dir .. "/icons/hdd.png"
theme.widget_music                              = theme.dir .. "/icons/note.png"
theme.widget_music_on                           = theme.dir .. "/icons/note_on.png"
theme.widget_vol                                = theme.dir .. "/icons/vol.png"
theme.widget_vol_low                            = theme.dir .. "/icons/vol_low.png"
theme.widget_vol_no                             = theme.dir .. "/icons/vol_no.png"
theme.widget_vol_mute                           = theme.dir .. "/icons/vol_mute.png"
theme.widget_mail                               = theme.dir .. "/icons/mail.png"
theme.widget_mail_on                            = theme.dir .. "/icons/mail_on.png"
theme.tasklist_plain_task_name                  = true
theme.tasklist_disable_icon                     = false
theme.useless_gap                               = dpi(1)
theme.titlebar_close_button_focus               = theme.dir .. "/icons/titlebar/close_focus.png"
theme.titlebar_close_button_normal              = theme.dir .. "/icons/titlebar/close_normal.png"
theme.titlebar_ontop_button_focus_active        = theme.dir .. "/icons/titlebar/ontop_focus_active.png"
theme.titlebar_ontop_button_normal_active       = theme.dir .. "/icons/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_inactive      = theme.dir .. "/icons/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_inactive     = theme.dir .. "/icons/titlebar/ontop_normal_inactive.png"
theme.titlebar_sticky_button_focus_active       = theme.dir .. "/icons/titlebar/sticky_focus_active.png"
theme.titlebar_sticky_button_normal_active      = theme.dir .. "/icons/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_inactive     = theme.dir .. "/icons/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_inactive    = theme.dir .. "/icons/titlebar/sticky_normal_inactive.png"
theme.titlebar_floating_button_focus_active     = theme.dir .. "/icons/titlebar/floating_focus_active.png"
theme.titlebar_floating_button_normal_active    = theme.dir .. "/icons/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_inactive   = theme.dir .. "/icons/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_inactive  = theme.dir .. "/icons/titlebar/floating_normal_inactive.png"
theme.titlebar_maximized_button_focus_active    = theme.dir .. "/icons/titlebar/maximized_focus_active.png"
theme.titlebar_maximized_button_normal_active   = theme.dir .. "/icons/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_inactive  = theme.dir .. "/icons/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_inactive = theme.dir .. "/icons/titlebar/maximized_normal_inactive.png"

local markup = lain.util.markup
local separators = lain.util.separators

-- redshift
theme.redshift = wibox.widget.textbox()
lain.widget.contrib.redshift.attach(
	theme.redshift,
	function (active)
		if active then
			theme.redshift:set_markup(markup(theme.palette.base08, markup.font(theme.font, " warm ")))
		else
			theme.redshift:set_markup(markup(theme.palette.base0D, markup.font(theme.font, " cool ")))
		end
	end
)

-- Weather
theme.weather = lain.widget.weather({
	APPID = "b4b79f4cb1b3705e7226d8ad12003e0a",
    city_id = 5088597, -- Lebanon, NH
	--city_id = 4965481, -- Gorham, ME
    units = "imperial",
    notification_preset = { font = "Monospace 10" },
    settings = function()
        units = math.floor(weather_now["main"]["temp"])
        widget:set_markup(" " .. markup.font(theme.font, units .. "°F") .. " ")
    end
})

-- Textclock
local clockicon = wibox.widget.imagebox(theme.widget_clock)
local clock = awful.widget.watch(
    "date +'%a %d %b %R'", 60,
    function(widget, stdout)
        widget:set_markup(" " .. markup.font(theme.font, stdout))
    end
)

-- Calendar
theme.cal = lain.widget.cal({
    attach_to = { clock },
    notification_preset = {
        font = "xos4 Terminus 10",
        fg   = theme.fg_normal,
        bg   = theme.bg_normal
    }
})

-- Mail IMAP check
local mailicon = wibox.widget.imagebox(theme.widget_mail)
--[[ commented because it needs to be set before use
mailicon:buttons(my_table.join(awful.button({ }, 1, function () awful.spawn(mail) end)))
theme.mail = lain.widget.imap({
    timeout  = 180,
    server   = "server",
    mail     = "mail",
    password = "keyring get mail",
    settings = function()
        if mailcount > 0 then
            widget:set_markup(markup.font(theme.font, " " .. mailcount .. " "))
            mailicon:set_image(theme.widget_mail_on)
        else
            widget:set_text("")
            mailicon:set_image(theme.widget_mail)
        end
    end
})
--]]

-- MPD
local musicplr = awful.util.terminal .. " -title Music -g 130x34-320+16 -e ncmpcpp"
local mpdicon = wibox.widget.imagebox(theme.widget_music)
mpdicon:buttons(my_table.join(
    awful.button({ modkey }, 1, function () awful.spawn.with_shell(musicplr) end),
    awful.button({ }, 2, function ()
        os.execute("mpc prev")
        theme.mpd.update()
    end),
    awful.button({ }, 1, function ()
        os.execute("mpc toggle")
        theme.mpd.update()
    end),
    awful.button({ }, 3, function ()
        os.execute("mpc next")
        theme.mpd.update()
    end)))
theme.mpd = lain.widget.mpd({
    settings = function()
        if mpd_now.state == "play" then
            artist = " " .. mpd_now.artist .. " "
            title  = mpd_now.title  .. " "
            mpdicon:set_image(theme.widget_music_on)
        elseif mpd_now.state == "pause" then
            artist = " mpd "
            title  = "paused "
        else
            artist = " mpd "
            title  = "idle "
            mpdicon:set_image(theme.widget_music)
        end

        widget:set_markup(markup.font(theme.font, markup(theme.palette.base08, artist) .. title))
    end
})

-- MEM
local memicon = wibox.widget.imagebox(theme.widget_mem)
local mem = lain.widget.mem({
    settings = function()
        widget:set_markup(markup.font(theme.font, " " .. mem_now.used .. "MB "))
    end
})

-- CPU
local cpuicon = wibox.widget.imagebox(theme.widget_cpu)
local cpu = lain.widget.cpu({
    settings = function()
        widget:set_markup(markup.font(theme.font, " " .. cpu_now.usage .. "% "))
    end
})

-- Coretemp
local tempicon = wibox.widget.imagebox(theme.widget_temp)
local temp = lain.widget.temp({
    settings = function()
        widget:set_markup(markup.font(theme.font, " " .. coretemp_now .. "°C "))
    end
})

-- / fs
local fsicon = wibox.widget.imagebox(theme.widget_hdd)
-- commented because it needs Gio/Glib >= 2.54
theme.fs = lain.widget.fs({
    notification_preset = { fg = theme.fg_normal, bg = theme.bg_normal, font = "xos4 Terminus 10" },
    settings = function()
        widget:set_markup(markup.font(theme.font, " " .. fs_now["/"].percentage .. "% "))
    end
})
--

-- Battery
local baticon = wibox.widget.imagebox(theme.widget_battery)
local bat = lain.widget.bat({
    settings = function()
        if bat_now.status and bat_now.status ~= "N/A" then
            if bat_now.ac_status == 1 then
                baticon:set_image(theme.widget_ac)
            elseif not bat_now.perc and tonumber(bat_now.perc) <= 5 then
                baticon:set_image(theme.widget_battery_empty)
            elseif not bat_now.perc and tonumber(bat_now.perc) <= 15 then
                baticon:set_image(theme.widget_battery_low)
            else
                baticon:set_image(theme.widget_battery)
            end
            widget:set_markup(markup.font(theme.font, " " .. bat_now.perc .. "% "))
        else
            widget:set_markup(markup.font(theme.font, " AC "))
            baticon:set_image(theme.widget_ac)
        end
    end
})

-- Pulse volume
local volicon = wibox.widget.imagebox(theme.widget_vol)
--volicon:buttons(mytable.join(
--	awful.button({ }, 1, function ()
--		os.execute("pactl set-sink-mute on")
--		theme.volume.update()
--	end)))
theme.volume = lain.widget.pulse({
    settings = function()
        if volume_now.muted == "yes" then
            volicon:set_image(theme.widget_vol_mute)
        elseif tonumber(volume_now.channel[1]) == 0 then
            volicon:set_image(theme.widget_vol_no)
        elseif tonumber(volume_now.channel[1]) <= 50 then
            volicon:set_image(theme.widget_vol_low)
        else
            volicon:set_image(theme.widget_vol)
        end

        widget:set_markup(markup.font(theme.font, markup(theme.palette.base0A, " " .. volume_now.channel[1] .. "% ")))
    end
})


-- Net
local neticon = wibox.widget.imagebox(theme.widget_net)
local net = lain.widget.net({
    settings = function()
        widget:set_markup(markup.font(theme.font,
                          markup(theme.palette.base0B, " " .. net_now.received)
                          .. " " ..
                          markup(theme.palette.base0D, " " .. net_now.sent .. " ")))
    end
})

-- Separators
local spr     = wibox.widget.textbox(' ')
local arrl_dl = separators.arrow_left(theme.bg_focus, "alpha")
local arrl_ld = separators.arrow_left("alpha", theme.bg_focus)

function theme.at_screen_connect(s)
    -- Quake application
    s.quake = lain.util.quake({ app = awful.util.terminal })

    -- If wallpaper is a function, call it with the screen
    local wallpaper = theme.wallpaper
    if type(wallpaper) == "function" then
        wallpaper = wallpaper(s)
    end
    gears.wallpaper.maximized(wallpaper, s, true)

    -- Tags
    awful.tag(awful.util.tagnames, s, awful.layout.layouts)

    -- Create a promptbox for each screen
    s.mypromptbox = awful.widget.prompt()
    -- Create an imagebox widget which will contains an icon indicating which layout we're using.
    -- We need one layoutbox per screen.
    s.mylayoutbox = awful.widget.layoutbox(s)
    s.mylayoutbox:buttons(my_table.join(
                           awful.button({}, 1, function () awful.layout.inc( 1) end),
                           awful.button({}, 2, function () awful.layout.set( awful.layout.layouts[1] ) end),
                           awful.button({}, 3, function () awful.layout.inc(-1) end),
                           awful.button({}, 4, function () awful.layout.inc( 1) end),
                           awful.button({}, 5, function () awful.layout.inc(-1) end)))
    -- Create a taglist widget
    s.mytaglist = awful.widget.taglist(s, awful.widget.taglist.filter.all, awful.util.taglist_buttons)

    -- Create a tasklist widget
    s.mytasklist = awful.widget.tasklist(s, awful.widget.tasklist.filter.currenttags, awful.util.tasklist_buttons)

    -- Create the wibox
    s.mywibox = awful.wibar({ position = "top", screen = s, height = dpi(18), bg = theme.bg_normal, fg = theme.fg_normal })

    -- Add widgets to the wibox
    s.mywibox:setup {
        layout = wibox.layout.align.horizontal,
        { -- Left widgets
            layout = wibox.layout.fixed.horizontal,
            --spr,
            s.mytaglist,
            s.mypromptbox,
            spr,
        },
        s.mytasklist, -- Middle widget
        { -- Right widgets
            layout = wibox.layout.fixed.horizontal,
            wibox.widget.systray(),
            --spr,
			--theme.redshift,
			spr,
            arrl_ld,
            wibox.container.background(mpdicon, theme.bg_focus),
            wibox.container.background(theme.mpd.widget, theme.bg_focus),
            arrl_dl,
            volicon,
            theme.volume.widget,
            arrl_ld,
            wibox.container.background(neticon, theme.bg_focus),
            wibox.container.background(net.widget, theme.bg_focus),
            arrl_dl,
            --memicon,
    	    --mem.widget,
            --arrl_ld,
            --wibox.container.background(cpuicon, theme.bg_focus),
            --wibox.container.background(cpu.widget, theme.bg_focus),
            --arrl_dl,
            tempicon,
			theme.redshift,
            --temp.widget,
            arrl_ld,
            --wibox.container.background(fsicon, theme.bg_focus),
            --wibox.container.background(theme.fs.widget, theme.bg_focus),
            --arrl_dl,
            --baticon,
            --bat.widget,
            --arrl_ld,
            wibox.container.background(theme.weather.icon, theme.bg_focus),
            wibox.container.background(theme.weather.widget, theme.bg_focus),
            arrl_dl,
            clock,
            spr,
            arrl_ld,
            wibox.container.background(s.mylayoutbox, theme.bg_focus),
        },
    }
end

return theme
