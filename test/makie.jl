import Makie

@testset "Makie" begin
    theme = theme_spaceduck()
    @test theme isa Makie.Theme
    @test theme.backgroundcolor[] == SpaceDuck.BACKGROUND
    @test theme.Axis.xgridcolor[] == SpaceDuck.GRID

    spaceduck_makie!()
    @test Makie.current_default_theme().backgroundcolor[] == SpaceDuck.BACKGROUND
    fig, ax, plt = Makie.lines(1:10)
    @test ax.backgroundcolor[] == Makie.to_color(SpaceDuck.BACKGROUND)
    @test plt.color[] == Makie.to_color(SpaceDuck.PALETTE[1])

    Makie.set_theme!()
end
