module SpaceDuck

using GLMakie

export spaceduck_theme
export spaceduck_makie!

function spaceduck_theme()
    return Theme(
        backgroundcolor = "#0f111b",
        textcolor = "#ece0e1",
        fontsize = 16,
        Axis = (
            backgroundcolor = "#0f111b",
            titlecolor = "#ece0e1",
            xlabelcolor = "#ece0e1",
            ylabelcolor = "#ece0e1",
            xgridcolor = "#ece0e1",
            ygridcolor = "#ece0e1",
            topspinecolor = "#ece0e1",
            bottomspinecolor = "#ece0e1",
            leftspinecolor = "#ece0e1",
            rightspinecolor = "#ece0e1",
            xticklabelcolor = "#ece0e1",
            yticklabelcolor = "#ece0e1"
        ),
        Legend = (
            backgroundcolor = "#0f111b",
            framecolor = "#ece0e1",
            labelcolor = "#ece0e1"
        )
    )
end

function spaceduck_makie!()
    try
        set_theme!(spaceduck_theme())
    catch e
        @warn "Error applying SpaceDuck theme" exception = e
    end
end

end # module

