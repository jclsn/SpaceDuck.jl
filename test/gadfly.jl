import Gadfly

@testset "Gadfly" begin
    theme = Gadfly.get_theme(Val(:spaceduck))
    @test theme isa Gadfly.Theme
    @test theme.background_color == SpaceDuck.BACKGROUND

    Gadfly.push_theme(:spaceduck)
    p = Gadfly.plot(x = 1:10, y = rand(10), color = repeat(["a", "b"], 5), Gadfly.Geom.line)
    path = joinpath(mktempdir(), "spaceduck.svg")
    Gadfly.draw(Gadfly.SVG(path), p)
    @test occursin("#0F111B", uppercase(read(path, String)))
    Gadfly.pop_theme()
end
