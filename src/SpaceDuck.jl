module SpaceDuck

using Colors: Colors, Colorant, @colorant_str

export theme_spaceduck, spaceduck_makie!

include("palette.jl")

"""
    theme_spaceduck()

Return the SpaceDuck theme as a `Makie.Theme`.

Requires Makie (or one of its backends, e.g. CairoMakie or GLMakie) to be loaded.

# Examples
```julia
using CairoMakie, SpaceDuck
set_theme!(theme_spaceduck())
with_theme(theme_spaceduck()) do
    lines(rand(10))
end
```
"""
function theme_spaceduck end

"""
    spaceduck_makie!()

Set the SpaceDuck theme as the global Makie theme.
Shorthand for `set_theme!(theme_spaceduck())`.

Requires Makie (or one of its backends) to be loaded.
"""
function spaceduck_makie! end

end  # module SpaceDuck
