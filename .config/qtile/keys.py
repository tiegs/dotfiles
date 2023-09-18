from libqtile.config import Key, Drag, Click
from libqtile.lazy import lazy

from groups import groups

mod = "mod4"
alt = "mod1"
terminal = "kitty"
term_cmd = f"{terminal} byobu-tmux new"

volumeLimit = 1.0

keys = [
    # A list of available commands that can be bound to keys can be found
    # at https://docs.qtile.org/en/latest/manual/config/lazy.html

    # Switch between windows
    Key([mod], "h", lazy.layout.left(), desc="Move focus to left"),
    Key([mod], "l", lazy.layout.right(), desc="Move focus to right"),
    Key([mod], "j", lazy.layout.down(), desc="Move focus down"),
    Key([mod], "k", lazy.layout.up(), desc="Move focus up"),
    # Key([mod], "space", lazy.layout.next(), desc="Move window focus to other window"),
    Key([alt], "Tab", lazy.layout.next(), desc="Move window focus to other window"),

    # Move windows between left/right columns or move up/down in current stack.
    # Moving out of range in Columns layout will create new column.
    Key([mod, "shift"], "h", lazy.layout.shuffle_left(), desc="Move window to the left"),
    Key([mod, "shift"], "l", lazy.layout.shuffle_right(), desc="Move window to the right"),
    Key([mod, "shift"], "j", lazy.layout.shuffle_down(), desc="Move window down"),
    Key([mod, "shift"], "k", lazy.layout.shuffle_up(), desc="Move window up"),

    # Grow windows. If current window is on the edge of screen and direction
    # will be to screen edge - window would shrink.
    Key([mod, "control"], "h", lazy.layout.grow_left(), desc="Grow window to the left"),
    Key([mod, "control"], "l", lazy.layout.grow_right(), desc="Grow window to the right"),
    Key([mod, "control"], "j", lazy.layout.grow_down(), desc="Grow window down"),
    Key([mod, "control"], "k", lazy.layout.grow_up(), desc="Grow window up"),
    Key([mod], "n", lazy.layout.normalize(), desc="Reset all window sizes"),

    # Toggle between split and unsplit sides of stack.
    # Split = all windows displayed
    # Unsplit = 1 window displayed, like Max layout, but still with
    # multiple stack panes
    Key([mod, "shift"], "Return", lazy.layout.toggle_split(), desc="Toggle between split and unsplit sides of stack"),

    # Toggle between different layouts as defined below
    Key([mod], "Tab", lazy.next_layout(), desc="Toggle between layouts"),
    Key([mod], "q", lazy.window.kill(), desc="Kill focused window"),
    Key([mod, "control"], "r", lazy.reload_config(), desc="Reload the config"),
    Key([mod, "control"], "q", lazy.shutdown(), desc="Shutdown Qtile"),
    Key([mod], "r", lazy.spawncmd(), desc="Spawn a command using a prompt widget"),

    #####################
    ## Window controls ##
    #####################
    Key([mod], "u", lazy.window.toggle_fullscreen(), desc="Toggle window fullscreen"),
    Key([mod], "o", lazy.window.toggle_floating(), desc="Toggle window floating"),


    # ░█▀█░█▀█░█▀█░░░█░░░█▀█░█░█░█▀█░█▀▀░█░█░█▀▀░█▀▄░█▀▀
    # ░█▀█░█▀▀░█▀▀░░░█░░░█▀█░█░█░█░█░█░░░█▀█░█▀▀░█▀▄░▀▀█
    # ░▀░▀░▀░░░▀░░░░░▀▀▀░▀░▀░▀▀▀░▀░▀░▀▀▀░▀░▀░▀▀▀░▀░▀░▀▀▀
    Key(['control', 'mod1'], 'f', lazy.spawn('firefox'), desc="Launch Firefox"),

    # Terminal
    Key(['control', 'mod1'], 't', lazy.spawn(term_cmd), desc="Launch terminal (tmux)"),
    Key([mod], 'Return',          lazy.spawn(term_cmd), desc="Launch terminal (tmux)"),
    Key([mod, 'shift'], 'Return', lazy.spawn(terminal), desc="Launch terminal (fallback)"),

    Key(['control'], 'space', lazy.spawn('rofi -show drun -sync'), desc="Application Launcher"),


    # ░█▄█░█▀▀░█▀▄░▀█▀░█▀█░░░█░█░█▀▀░█░█░█▀▀
    # ░█░█░█▀▀░█░█░░█░░█▀█░░░█▀▄░█▀▀░░█░░▀▀█
    # ░▀░▀░▀▀▀░▀▀░░▀▀▀░▀░▀░░░▀░▀░▀▀▀░░▀░░▀▀▀
    # Key([], "XF86AudioRaiseVolume", lazy.spawn("pactl set-sink-volume 0 +5%"), desc='Volume Up'),
    # Key([], "XF86AudioLowerVolume", lazy.spawn("pactl set-sink-volume 0 -5%"), desc='volume down'),
    # Key([], "XF86AudioMute", lazy.spawn("pactl set-sink-mute 0 toggle"), desc='Volume Mute'),
    Key([], "XF86AudioRaiseVolume", lazy.spawn(f"wpctl set-volume -l {volumeLimit} @DEFAULT_AUDIO_SINK@ 5%+"), desc='Volume Up'),
    Key([], "XF86AudioLowerVolume", lazy.spawn(f"wpctl set-volume -l {volumeLimit} @DEFAULT_AUDIO_SINK@ 5%-"), desc='volume down'),
    Key([], "XF86AudioMute", lazy.spawn("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), desc='Volume Mute'),

    Key([], "XF86AudioPlay", lazy.spawn("playerctl play-pause"), desc='playerctl'),
    Key([], "XF86AudioPrev", lazy.spawn("playerctl previous"), desc='playerctl'),
    Key([], "XF86AudioNext", lazy.spawn("playerctl next"), desc='playerctl'),

    Key([], "XF86MonBrightnessUp", lazy.spawn("brightnessctl s 10%+"), desc='brightness UP'),
    Key([], "XF86MonBrightnessDown", lazy.spawn("brightnessctl s 10%-"), desc='brightness Down'),
]

for i in groups:
    keys.extend(
        [
            # mod1 + letter of group = switch to group
            Key(
                [mod],
                i.name,
                lazy.group[i.name].toscreen(),
                desc="Switch to group {}".format(i.name),
            ),
            # mod1 + shift + letter of group = switch to & move focused window to group
            Key(
                [mod, "shift"],
                i.name,
                lazy.window.togroup(i.name, switch_group=True),
                desc="Switch to & move focused window to group {}".format(
                    i.name),
            ),
            # Or, use below if you prefer not to switch to that group.
            # # mod1 + shift + letter of group = move focused window to group
            # Key([mod, "shift"], i.name, lazy.window.togroup(i.name),
            #     desc="move focused window to group {}".format(i.name)),
        ]
    )

# Drag floating layouts.
mouse = [
    Drag([mod], "Button1", lazy.window.set_position_floating(),
         start=lazy.window.get_position()),
    Drag([mod], "Button3", lazy.window.set_size_floating(),
         start=lazy.window.get_size()),
    Click([mod], "Button2", lazy.window.bring_to_front()),
]
