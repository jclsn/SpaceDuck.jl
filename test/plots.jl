import Plots

@testset "Plots" begin
    @test haskey(Plots.PlotThemes._themes, :spaceduck)

    Plots.theme(:spaceduck)
    p = Plots.plot(rand(10), title = "SpaceDuck")
    @test p[:background_color] == Plots.RGBA(SpaceDuck.BACKGROUND)
    @test p.series_list[1][:linecolor] == Plots.RGBA(SpaceDuck.PALETTE[1])

    path = joinpath(mktempdir(), "spaceduck.png")
    Plots.savefig(p, path)
    @test filesize(path) > 0

    Plots.theme(:default)
end
