{ 
	wayland.windowManager.hyprland = {
    		enable = true;
    		xwayland.enable = true;
       
	settings = {
      		"$mainMod" = "SUPER";

	monitor = [
		"HDMI-A-1, 1920x1080@60, 0x0, 1"
		"DP-1, 1680x1050@60,1920x0,1"
	];	

	env = [
        	"XCURSOR_SIZE,24"
		"HYPRCURSOR_SIZE,24"
		"LIBVA_DRIVER_NAME,nvidia"
		"__GLX_VENDOR_LIBRARY_NAME,nvidia"
	];

	debug = {
		disable_logs = false;
		enable_stdout_logs = true;
	};

	input = {
		kb_layout = "us, ru";
		kb_options = "grp:alt_shift_toggle";

		follow_mouse = 1;
	
	touchpad = {
          natural_scroll = false;
	};

	sensitivity = 0;
	force_no_accel = 1;
	
	};

	general = {
		gaps_in = 6;
		gaps_out = 12;
		border_size = 2;
        
		"col.active_border" = "rgb(f0f8ff) rgb(808080) 45deg";
		"col.inactive_border" = "rgb(808080)";

		layout = "dwindle";
	
		resize_on_border = false;

		allow_tearing = true;
	};

	decoration = {
		rounding = 10;
		active_opacity = "1.0";
		inactive_opacity = "1.0";

	shadow = {
		enabled = true;
		range = 4;
		render_power = 3;
		color = "rgba(1a1a1aee)";
	};

	blur = {
		enabled = true;
		size = 3;
		passes = 1;
		vibrancy = "0.1696";
		};

	};

	animations = {
		enabled = true;
	

	bezier =  [
		"easeOutQuint,0.23,1,0.32,1"
		"easeInOutCubic,0.65,0.05,0.36,1"
		"linear,0,0,1,1"
		"almostLinear,0.5,0.5,0.75,1.0"
		"quick,0.15,0,0.1,1"
	];

	animation = [
		"global, 1, 10, default"
		"border, 1, 5.39, easeOutQuint"
		"windows, 1, 4.79, easeOutQuint"
		"windowsIn, 1, 4.1, easeOutQuint, popin 87%"
		"windowsOut, 1, 1.49, linear, popin 87%"
		"fadeIn, 1, 1.73, almostLinear"
		"fadeOut, 1, 1.46, almostLinear"
		"fade, 1, 3.03, quick"
		"layers, 1, 3.81, easeOutQuint"
		"layersIn, 1, 4, easeOutQuint, fade"
		"layersOut, 1, 1.5, linear, fade"
		"fadeLayersIn, 1, 1.79, almostLinear"
		"fadeLayersOut, 1, 1.39, almostLinear"
		"workspaces, 1, 1.94, almostLinear, fade"
		"workspacesIn, 1, 1.21, almostLinear, fade"
		"workspacesOut, 1, 1.94, almostLinear, fade"
	];
}; 

	dwindle = {
		pseudotile = true;
		preserve_split = true;
	};

	master = {
		new_status = "master";
	};

	gestures = {
		workspace_swipe = false;
	};

	misc = {
		force_default_wallpaper = "0";
		disable_hyprland_logo = true;
	};

	windowrule = [
		"opacity 0.9 0.8, ^(kitty)$"
		"opacity 0.9 0.8, ^(discord)$"
	];

	exec-once = [
		"hyprpaper"
		"waybar"
	];

	bind = [
		" , mouse:277, pass, class:^(discord)$"
		" , Control_R, pass, class:^(discord)$"
		"$mainMod, RETURN, exec, kitty"
		"$mainMod, W, killactive,"
		"$mainMod, M, exit,"
		"$mainMod, E, exec, nautilus"
		"$mainMod, V, togglefloating,"
		"$mainMod, R, exec, $HOME/.config/home-manager/rofi/launchers/type-3/launcher.sh"
		"$mainMod, P, pseudo,"
		"$mainMod, J, togglesplit,"
		"$mainMod, F, fullscreen,"
		"$mainMod SHIFT, S, exec, $HOME/.config/home-manager/hypr/hyprland-modules/screenshot.sh"

		"$mainMod, left, movefocus, l"
		"$mainMod, right, movefocus, r"
		"$mainMod, up, movefocus, u"
		"$mainMod, down, movefocus, d"

		"$mainMod, 1, workspace, 1"
		"$mainMod, 2, workspace, 2"
		"$mainMod, 3, workspace, 3"
		"$mainMod, 4, workspace, 4"
		"$mainMod, 5, workspace, 5"
		"$mainMod, 6, workspace, 6"
		"$mainMod, 7, workspace, 7"
		"$mainMod, 8, workspace, 8"
		"$mainMod, 9, workspace, 9"
		"$mainMod, 0, workspace, 10"

		"$mainMod SHIFT, 1, movetoworkspace, 1"
		"$mainMod SHIFT, 2, movetoworkspace, 2"
		"$mainMod SHIFT, 3, movetoworkspace, 3"
		"$mainMod SHIFT, 4, movetoworkspace, 4"
		"$mainMod SHIFT, 5, movetoworkspace, 5"
		"$mainMod SHIFT, 6, movetoworkspace, 6"
		"$mainMod SHIFT, 7, movetoworkspace, 7"
		"$mainMod SHIFT, 8, movetoworkspace, 8"
		"$mainMod SHIFT, 9, movetoworkspace, 9"
		"$mainMod SHIFT, 0, movetoworkspace, 10"

		"$mainMod, S, togglespecialworkspace, magic"
#		"$mainMod SHIFT, S, movetoworkspace, special:magic"

		"$mainMod, mouse_down, workspace, e+1"
		"$mainMod, mouse_up, workspace, e-1"

	];

	bindm = [
		"$mainMod, mouse:272, movewindow"
		"$mainMod, mouse:273, resizewindow"
		];

	bindel = [
		",XF86AudioRaiseVolume, exec, wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"
		",XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
		",XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
		",XF86AudioMicMute, exec, wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"
		",XF86MonBrightnessUp, exec, brightnessctl s 10%+"
		",XF86MonBrightnessDown, exec, brightnessctl s 10%-"
	];

	bindl = [
		", XF86AudioNext, exec, playerctl next"
		", XF86AudioPause, exec, playerctl play-pause"
		", XF86AudioPlay, exec, playerctl play-pause"
		", XF86AudioPrev, exec, playerctl previous"
	];

	workspace = [
		"1, monitor:HDMI-A-1"
		"2, monitor:HDMI-A-1"
		"3, monitor:HDMI-A-1"
		"4, monitor:HDMI-A-1"
		"5, monitor:HDMI-A-1"
		"6, monitor:HDMI-A-1"
		"7, monitor:HDMI-A-1"
		"8, monitor:HDMI-A-1"
		"9, monitor:HDMI-A-1"
		"10, monitor:DP-1"
	];

	windowrulev2 = [
		"immediate, class:^(cs2)$"
		"fullscreen, class:^(cs2)$"
		"workspace 10, class:^(discord)$"
		"workspace 1, class:^(Google-chrome)$"
		"workspace 2, class:^(cs2)$"
		"workspace 3, class:^(steam)$"
		"immediate, class:^(osu!)$"
		"immediate, class:^('osu!')$"
#		"xwayland 1, class:^(YandexMusic)$"
	];
			};	
		};
	
}
