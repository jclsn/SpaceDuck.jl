module SpaceDuckGadflyExt

using Gadfly: Gadfly, Theme, Scale
using SpaceDuck: BACKGROUND, GRID, SUBTLE, FOREGROUND, PALETTE, GRADIENT

function Gadfly.get_theme(::Val{:spaceduck})
    return Theme(
        default_color = PALETTE[1],
        background_color = BACKGROUND,
        panel_fill = BACKGROUND,
        grid_color = GRID,
        major_label_color = FOREGROUND,
        minor_label_color = SUBTLE,
        key_title_color = FOREGROUND,
        key_label_color = FOREGROUND,
        point_label_color = FOREGROUND,
        discrete_highlight_color = _ -> BACKGROUND,
        discrete_color_scale = Scale.color_discrete_manual(PALETTE...),
        continuous_color_scale = Scale.color_continuous(colormap = Scale.lab_gradient(GRADIENT...)),
    )
end

end  # module SpaceDuckGadflyExt
