#!/usr/bin/env sh

OUT="$HOME/.config/rofi/colors.rasi"

cat > "$OUT" <<EOF
/* Auto-generated. Do not edit. */

* {
    bg:     ${COLOR_BG};
    fg:     ${COLOR_FG};
    muted:  ${COLOR_MUTED};
    accent: ${COLOR_ACCENT};
    border: ${COLOR_BORDER};
    surface1: ${COLOR_SURFACE_1};
    surface2: ${COLOR_SURFACE_2};
}
EOF

