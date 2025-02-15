using SpaceDuck
using Test

@testset "SpaceDuck.jl" begin
    @test spaceduck_makie!() == nothing
end
