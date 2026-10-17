module SpaceDuckPlotThemesExt

using PlotThemes: PlotThemes, PlotTheme
using PlotThemes.PlotUtils: cgrad, palette
using SpaceDuck: BACKGROUND, GRID, MUTED, FOREGROUND, PALETTE, GRADIENT

const _spaceduck = PlotTheme(
    bg = BACKGROUND,
    bginside = BACKGROUND,
    fg = MUTED,
    fgtext = FOREGROUND,
    fgguide = FOREGROUND,
    fglegend = FOREGROUND,
    legendfontcolor = FOREGROUND,
    legendtitlefontcolor = FOREGROUND,
    titlefontcolor = FOREGROUND,
    gridcolor = GRID,
    gridalpha = 1,
    minorgridcolor = GRID,
    foreground_color_border = MUTED,
    foreground_color_axis = MUTED,
    palette = palette(PALETTE),
    colorgradient = cgrad(GRADIENT),
)

function __init__()
    PlotThemes.add_theme(:spaceduck, _spaceduck)
end

end  # module SpaceDuckPlotThemesExt
