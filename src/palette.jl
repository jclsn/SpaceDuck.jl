# The SpaceDuck color palette, taken from https://github.com/pineapplegiant/spaceduck

"Main background color."
const BACKGROUND = colorant"#0f111b"
"Slightly lighter background, used for panels and legends."
const BACKGROUND_ALT = colorant"#16172d"
"Highlight background, used for selections."
const HIGHLIGHT = colorant"#1b1c36"
"Subtle color for grid lines and other low-contrast decorations."
const GRID = colorant"#30365f"
"Muted gray, used for spines, ticks and minor text."
const MUTED = colorant"#686f9a"
"Light gray, used for secondary text."
const SUBTLE = colorant"#818596"
"Main foreground (text) color."
const FOREGROUND = colorant"#ecf0c1"

const RED = colorant"#e33400"
const ORANGE = colorant"#e39400"
const YELLOW = colorant"#f2ce00"
const GREEN = colorant"#5ccc96"
const CYAN = colorant"#00a3cc"
const PURPLE = colorant"#b3a1e6"
const MAGENTA = colorant"#ce6f8f"
const VIOLET = colorant"#7a5ccc"

"""
    PALETTE

Categorical colors used for successive data series, in order.
"""
const PALETTE = [CYAN, GREEN, YELLOW, MAGENTA, PURPLE, ORANGE, RED, VIOLET]

"""
    GRADIENT

Colors for a continuous colormap, from dark to bright.
"""
const GRADIENT = [BACKGROUND_ALT, VIOLET, CYAN, GREEN, YELLOW]

"Convert a color to a `#rrggbb` string, for libraries that expect hex strings."
hex(c::Colorant) = "#" * Colors.hex(c, :rrggbb)
