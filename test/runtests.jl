using Test
using SpaceDuck
using MakieCore  # for Theme, current_theme

@testset "SpaceDuck.jl" begin
    # Test that spaceduck_theme returns a Theme
    theme = spaceduck_theme()
    @test isa(theme, Theme)

    # Try setting the theme and check that it applies
    spaceduck_makie!()
    applied_theme = current_theme()

    # You could test a few key fields to verify application
    @test applied_theme.backgroundcolor == "#0f111b"
    @test applied_theme.textcolor == "#ece0e1"
    @test applied_theme.fontsize == 16
end

