import PlotlyBase

@testset "PlotlyBase" begin
    @test :spaceduck in keys(PlotlyBase.templates)
    template = PlotlyBase.templates[:spaceduck]
    @test template isa PlotlyBase.Template
    @test template.layout[:paper_bgcolor] == SpaceDuck.hex(SpaceDuck.BACKGROUND)

    p = PlotlyBase.Plot(PlotlyBase.scatter(y = rand(10)), PlotlyBase.Layout(template = template))
    json = PlotlyBase.json(p)
    @test occursin(SpaceDuck.hex(SpaceDuck.BACKGROUND), json)
end
