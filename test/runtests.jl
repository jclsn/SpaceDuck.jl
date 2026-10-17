using SpaceDuck
using Test
using Aqua

@testset "SpaceDuck.jl" begin
    @testset "Aqua" begin
        Aqua.test_all(SpaceDuck)
    end

    @testset "Palette" begin
        @test SpaceDuck.hex(SpaceDuck.BACKGROUND) == "#0f111b"
        @test length(SpaceDuck.PALETTE) == 8
        @test allunique(SpaceDuck.PALETTE)
    end

    include("makie.jl")
    include("plots.jl")
end
