#!/usr/bin/env sh
# Canonical color tokens – Catppuccin Macchiato inspired

# Base
export COLOR_BG="#24273a"
export COLOR_BG_ALT="#1e2030"
export COLOR_FG="#cad3f5"
export COLOR_MUTED="#a5adcb"

# Accents
export COLOR_ACCENT="#8aadf4"   # blue
export COLOR_FOCUS="#a6da95"    # green
export COLOR_WARN="#eed49f"     # yellow
export COLOR_URGENT="#ed8796"   # red

# Surfaces / borders
export COLOR_BORDER="#363a4f"
export COLOR_SHADOW="#181926"

# --- Semantic surfaces (UI blocks / pills) ---
export COLOR_SURFACE_0="$COLOR_BG"        # bar base
export COLOR_SURFACE_1="#2a2f4a"           # subtle contrast surface
export COLOR_SURFACE_2="#363a4f"           # stronger contrast surface
export COLOR_SURFACE_ACTIVE="$COLOR_ACCENT"

# --- On-surface foregrounds ---
export COLOR_ON_SURFACE_DARK="$COLOR_BG"
export COLOR_ON_SURFACE_LIGHT="$COLOR_FG"

# --- Secondary accents (limited, controlled) ---
export COLOR_ACCENT_ALT="#7dc4e4"          # soft cyan
export COLOR_ACCENT_WARN="$COLOR_WARN"
export COLOR_ACCENT_CRIT="$COLOR_URGENT"

