module SpaceDuckMakieExt

using Makie: Makie, Theme
using SpaceDuck
using SpaceDuck: BACKGROUND, BACKGROUND_ALT, GRID, MUTED, FOREGROUND, PALETTE, GRADIENT

function SpaceDuck.theme_spaceduck()
    axis_colors = (
        backgroundcolor = BACKGROUND,
        xgridcolor = GRID,
        ygridcolor = GRID,
        xminorgridcolor = GRID,
        yminorgridcolor = GRID,
        leftspinecolor = MUTED,
        rightspinecolor = MUTED,
        topspinecolor = MUTED,
        bottomspinecolor = MUTED,
        xtickcolor = MUTED,
        ytickcolor = MUTED,
        xminortickcolor = MUTED,
        yminortickcolor = MUTED,
    )
    return Theme(
        backgroundcolor = BACKGROUND,
        textcolor = FOREGROUND,
        linecolor = FOREGROUND,
        markercolor = FOREGROUND,
        patchcolor = FOREGROUND,
        patchstrokecolor = BACKGROUND,
        colormap = GRADIENT,
        palette = (color = PALETTE, patchcolor = PALETTE),
        Axis = axis_colors,
        Axis3 = (
            xgridcolor = GRID,
            ygridcolor = GRID,
            zgridcolor = GRID,
            xspinecolor_1 = MUTED, xspinecolor_2 = MUTED, xspinecolor_3 = MUTED,
            yspinecolor_1 = MUTED, yspinecolor_2 = MUTED, yspinecolor_3 = MUTED,
            zspinecolor_1 = MUTED, zspinecolor_2 = MUTED, zspinecolor_3 = MUTED,
            xtickcolor = MUTED,
            ytickcolor = MUTED,
            ztickcolor = MUTED,
            xypanelcolor = BACKGROUND,
            yzpanelcolor = BACKGROUND,
            xzpanelcolor = BACKGROUND,
        ),
        PolarAxis = (
            backgroundcolor = BACKGROUND,
            rgridcolor = GRID,
            thetagridcolor = GRID,
            spinecolor = MUTED,
        ),
        Legend = (
            backgroundcolor = BACKGROUND_ALT,
            framecolor = GRID,
        ),
        Colorbar = (
            tickcolor = MUTED,
            minortickcolor = MUTED,
            spinewidth = 0,
        ),
    )
end

SpaceDuck.spaceduck_makie!() = Makie.set_theme!(SpaceDuck.theme_spaceduck())

end  # module SpaceDuckMakieExt
