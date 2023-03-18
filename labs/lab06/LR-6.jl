using Plots
using DifferentialEquations

1032205169%70+1

a = 0.01
b = 0.005

N = 16000
I = 116
R = 16

S = N-I-R

t = collect(LinRange(0, 300, 1000))
tspan = (0, 300)
u0 = [S; I; R]

function syst(dy, y, p, t)
    dy[1] = 0
    dy[2] = b*y[2]
    dy[3] = -b*y[2]
end

prob = ODEProblem(syst, u0, tspan)
sol = solve(prob, saveat = t)

plot(sol)

savefig("03.png")

function syst(dy, y, p, t)
    dy[1] = -a*y[1]
    dy[2] = a*y[1]-b*y[2]
    dy[3] = b*y[2]
end

prob = ODEProblem(syst, u0, tspan)
sol = solve(prob, saveat = t)

plot(sol)

savefig("04.png")


