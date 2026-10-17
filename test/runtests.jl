using SpaceDuck
using Test
using Aqua

@testset "SpaceDuck.jl" begin
    @testset "Aqua" begin
        # The persistent tasks check fails on Gadfly's dependency Hexagons,
        # which has no Project.toml. SpaceDuck spawns no tasks anyway.
        Aqua.test_all(SpaceDuck; persistent_tasks = false)
    end

    @testset "Palette" begin
        @test SpaceDuck.hex(SpaceDuck.BACKGROUND) == "#0f111b"
        @test length(SpaceDuck.PALETTE) == 8
        @test allunique(SpaceDuck.PALETTE)
    end

    include("makie.jl")
    include("plots.jl")
    include("gadfly.jl")
end
