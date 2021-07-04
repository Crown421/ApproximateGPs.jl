using Random
using Test
using SparseGPs
using Flux
using IterTools
using AbstractGPs
using SparseGPs

const GROUP = get(ENV, "GROUP", "All")
const PKGDIR = dirname(dirname(pathof(SparseGPs)))

include("test_utils.jl")

@testset "SparseGPs" begin
    include("svgp.jl")
    println(" ")
    @info "Ran svgp tests"

    include("equivalences.jl")
    println(" ")
    @info "Ran equivalences tests"
end
