module SpaceDuckPlotlyBaseExt

using PlotlyBase: PlotlyBase, Template, Layout, attr
using SpaceDuck: hex, BACKGROUND, BACKGROUND_ALT, GRID, MUTED, FOREGROUND, PALETTE, GRADIENT

function spaceduck_template()
    colorscale = [[(i - 1) / (length(GRADIENT) - 1), hex(c)] for (i, c) in enumerate(GRADIENT)]
    axis = attr(
        gridcolor = hex(GRID),
        linecolor = hex(MUTED),
        tickcolor = hex(MUTED),
        zerolinecolor = hex(MUTED),
    )
    scene_axis = attr(
        backgroundcolor = hex(BACKGROUND),
        gridcolor = hex(GRID),
        linecolor = hex(MUTED),
        zerolinecolor = hex(MUTED),
        showbackground = true,
    )
    layout = Layout(
        paper_bgcolor = hex(BACKGROUND),
        plot_bgcolor = hex(BACKGROUND),
        font_color = hex(FOREGROUND),
        colorway = hex.(PALETTE),
        colorscale = attr(sequential = colorscale),
        xaxis = axis,
        yaxis = axis,
        scene = attr(xaxis = scene_axis, yaxis = scene_axis, zaxis = scene_axis),
        polar = attr(
            bgcolor = hex(BACKGROUND),
            angularaxis = axis,
            radialaxis = axis,
        ),
        legend = attr(bgcolor = hex(BACKGROUND_ALT), bordercolor = hex(GRID)),
        hoverlabel = attr(bgcolor = hex(BACKGROUND_ALT), font_color = hex(FOREGROUND)),
    )
    return Template(layout = layout)
end

function __init__()
    PlotlyBase.templates[:spaceduck] = spaceduck_template()
end

end  # module SpaceDuckPlotlyBaseExt
