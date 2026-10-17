using SpaceDuck
using Test

@testset "SpaceDuck.jl" begin
    @testset "Palette" begin
        @test SpaceDuck.hex(SpaceDuck.BACKGROUND) == "#0f111b"
        @test length(SpaceDuck.PALETTE) == 8
        @test allunique(SpaceDuck.PALETTE)
    end

    @test spaceduck_makie!() == nothing
end
