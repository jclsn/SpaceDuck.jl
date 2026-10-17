# SpaceDuck

[![Build Status](https://github.com/jclsn/SpaceDuck.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/jclsn/SpaceDuck.jl/actions/workflows/CI.yml?query=branch%3Amain)
[![Coverage](https://codecov.io/gh/jclsn/SpaceDuck.jl/branch/main/graph/badge.svg)](https://codecov.io/gh/jclsn/SpaceDuck.jl)
[![Aqua QA](https://raw.githubusercontent.com/JuliaTesting/Aqua.jl/master/badge.svg)](https://github.com/JuliaTesting/Aqua.jl)

The [SpaceDuck](https://github.com/pineapplegiant/spaceduck) color scheme for
Julia plotting libraries.

Supported libraries:

| Library | Usage |
| --- | --- |
| [Makie](https://github.com/MakieOrg/Makie.jl) (CairoMakie, GLMakie, WGLMakie, AlgebraOfGraphics, ...) | `set_theme!(theme_spaceduck())` or `spaceduck_makie!()` |
| [Plots](https://github.com/JuliaPlots/Plots.jl) (all backends) | `theme(:spaceduck)` |
| [Gadfly](https://github.com/GiovineItalia/Gadfly.jl) | `Gadfly.push_theme(:spaceduck)` |
| [PlotlyJS](https://github.com/JuliaPlots/PlotlyJS.jl) / [PlotlyBase](https://github.com/sglyon/PlotlyBase.jl) | `templates.default = "spaceduck"` |

SpaceDuck has no dependency on any plotting library. Each theme is a
[package extension](https://pkgdocs.julialang.org/v1/creating-packages/#Conditional-loading-of-code-in-packages-(Extensions))
that loads automatically once both SpaceDuck and the plotting library are loaded.

## Installation

```julia
using Pkg
Pkg.add(url = "https://github.com/jclsn/SpaceDuck.jl")
```

## Usage

### Makie

```julia
using CairoMakie, SpaceDuck

set_theme!(theme_spaceduck())  # or spaceduck_makie!()
lines(1:10, rand(10))

# Only for a single figure
with_theme(theme_spaceduck()) do
    scatter(rand(10))
end
```

The theme can be combined with other Makie themes:

```julia
set_theme!(merge(theme_spaceduck(), theme_latexfonts()))
```

### Plots

```julia
using Plots, SpaceDuck

theme(:spaceduck)
plot(rand(10, 3))
```

### Gadfly

```julia
using Gadfly, SpaceDuck

Gadfly.push_theme(:spaceduck)
plot(x = rand(10), y = rand(10), Geom.point)

# Or for a single plot
Gadfly.with_theme(:spaceduck) do
    plot(x = rand(10), y = rand(10), Geom.point)
end
```

### PlotlyJS / PlotlyBase

```julia
using PlotlyJS, SpaceDuck

templates.default = "spaceduck"
plot(scatter(y = rand(10)))

# Or for a single plot
plot(scatter(y = rand(10)), Layout(template = templates[:spaceduck]))
```

### Palette

The colors are also available directly, e.g. for other libraries or custom plots:

```julia
using SpaceDuck

SpaceDuck.BACKGROUND  # RGB{N0f8}(0.059, 0.067, 0.106)
SpaceDuck.PALETTE     # categorical colors for data series
SpaceDuck.GRADIENT    # colors for continuous colormaps
SpaceDuck.hex(SpaceDuck.CYAN)  # "#00a3cc"
```

| Name | Color |
| --- | --- |
| `BACKGROUND` | `#0f111b` |
| `BACKGROUND_ALT` | `#16172d` |
| `HIGHLIGHT` | `#1b1c36` |
| `GRID` | `#30365f` |
| `MUTED` | `#686f9a` |
| `SUBTLE` | `#818596` |
| `FOREGROUND` | `#ecf0c1` |
| `RED` | `#e33400` |
| `ORANGE` | `#e39400` |
| `YELLOW` | `#f2ce00` |
| `GREEN` | `#5ccc96` |
| `CYAN` | `#00a3cc` |
| `PURPLE` | `#b3a1e6` |
| `MAGENTA` | `#ce6f8f` |
| `VIOLET` | `#7a5ccc` |
