module SpaceDuck

export spaceduck_makie!

# Applies the SpaceDuck theme for Makie
function spaceduck_makie!()
    try
        @eval using GLMakie
        
        # Apply theme for GLMakie
        @eval set_theme!(
            backgroundcolor = "#0f111b",
            textcolor = "#ece0e1",
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
    catch e
        println("Error applying theme: $e")
    end
end

end  # module SpaceDuck
