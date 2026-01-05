#!/usr/bin/env sh
# Brightness control helper
# Laptop panel -> brightnessctl
# BenQ external -> ddcutil (explicit display selection)

STEP="${3:-5}"

# Detect BenQ display number once
BENQ_DISPLAY="$(ddcutil detect 2>/dev/null | awk '/BenQ GW2480/{getline; print $2}' | sed 's/://')"

case "$1" in
  up|down)
    # Laptop panel
    if [ "$1" = "up" ]; then
      brightnessctl set +"${STEP}%"
    else
      brightnessctl set "${STEP}%-"
    fi
    ;;
  benq)
    [ -z "$BENQ_DISPLAY" ] && { echo "BenQ display not found"; exit 1; }
    case "$2" in
      up)
        ddcutil --display "$BENQ_DISPLAY" setvcp 10 +${STEP}
        ;;
      down)
        ddcutil --display "$BENQ_DISPLAY" setvcp 10 -${STEP}
        ;;
      *)
        echo "Usage: $0 benq up|down [step]"
        exit 1
        ;;
    esac
    ;;
  *)
    echo "Usage:"
    echo "  $0 up|down [step]"
    echo "  $0 benq up|down [step]"
    exit 1
    ;;
esac

