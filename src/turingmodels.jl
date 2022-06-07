@model StateSpaceModel(y) = begin
    N = length(y)
    x = tzeros(Real, N)
    σy = 1.0
    σx = 1.0

    x[1] ~ Normal(0, 1)
    y[1] ~ Normal(x[1], σy)

    # Iterators.drop(1:N, 1)
    for i ∈ 2:N
        x[i] ~ Normal(x[i-1], σx)
        y[i] ~ Normal(x[i], σy)
    end
end
