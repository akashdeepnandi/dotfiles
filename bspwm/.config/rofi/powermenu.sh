#!/usr/bin/env sh

choice=$(printf "Lock\nLogout\nReboot\nShutdown" | rofi -dmenu -i -p "Power")

case "$(printf "%s" "$choice" | tr '[:upper:]' '[:lower:]')" in
  lock)
    ~/.config/bspwm/lock.sh
    ;;
  logout)
    bspc quit
    ;;
  reboot)
    systemctl reboot
    ;;
  shutdown)
    systemctl poweroff
    ;;
esac

