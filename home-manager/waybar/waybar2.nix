{
  programs.waybar = {
    enable = true;
    settings = {
	bar2 = {
        layer = "top";
        position = "left";
        margin = "11 -2 12 12";
        output = "DP-1";
        spacing = 6;
        width = 24;

        modules-left = ["temperature"];
 #       modules-center = ["custom/task"];
 #       modules-left = [];
        modules-right = ["tray"];


    "custom/cs2" = {
       	format = "{icon}";
	format-icons = "";
	on-scroll-up = "$HOME/.config/home-manager/waybar/modules/cs2_start.sh";
	on-scroll-down = "$HOME/.config/home-manager/waybar/modules/cs2_stop.sh";

    };

    "temperature" = {
        thermal-zone = 2;
        hwmon-path = "/sys/class/hwmon/hwmon2/temp1_input";
        critical-threshold = 80;
        format-critical = "{temperatureC}°C {icon}";
        format = "{temperatureC}°C {icon}";
        format-icons = ["" "" "" "" ""];
        tooltip = false;
    };

    tray = {
        icon-size = 23;
        spacing = 2;
    };
		};
    	};


    style =
      ''
* {
    border: none;
    border-radius: 0;
    /* `otf-font-awesome` is required to be installed for icons */
    font-family: JetBrains Mono;
    font-weight: bold;
    min-height: 1px;
}

window#waybar {
    background: transparent;
}

window#waybar.hidden {
    opacity: 0.2;
}


#custom-cs2 {
    margin-left: 8px;
    margin-right: 8px;
    padding-left: 16px;
    padding-right: 16px;
    border-radius: 10px;
    transition: none;
    color: #ffffff;
    background: #383c4a;
}

#temperature {
    padding-left: 8px;
    padding-right: 8px;
    border-radius: 10px;
    transition: none;
    color: #ffffff;
    background: #383c4a;
}

#temperature.critical {
    background-color: #eb4d4b;
}


#tray {
    padding-left: 8px;
    padding-right: 8px;
    border-radius: 10px;
    color: #ffffff;
    transition: none;
    background: #383c4a;
}

@keyframes blink {
    to {
        background-color: #ffffff;
        color: #000000;
    }
}
      '';
  };
}
