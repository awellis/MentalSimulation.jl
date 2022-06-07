module MentalSimulation

using Parameters, Turing, Random
using CairoMakie

export savefig, publication_theme
export StateSpaceModel

include("utils.jl")
include("turingmodels.jl")

end
