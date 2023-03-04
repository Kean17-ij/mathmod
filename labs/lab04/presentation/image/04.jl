1032205169 % 70 + 1

using Plots
using DifferentialEquations

x0 = 2
y0 = 0
u0 = [x0; y0]

t0 = 0
tmax = 30
t = collect(LinRange(t0, tmax, 1000))
tspan = (t0, tmax)

w = 7

function syst(dy, y, p, t)
    dy[1] = y[2]
    dy[2] = -w*y[1]
end

prob = ODEProblem(syst, u0, tspan)
sol = solve(prob, saveat=t)

plot(sol, idxs=(2))

savefig("01j.png")

plot(sol, idxs=(1, 2))

savefig("02j.png")

w = 3
g = 9

function syst(dy, y, p, t)
    dy[1] = y[2]
    dy[2] = -g*y[2]-w*y[1]
end

prob = ODEProblem(syst, u0, tspan)
sol = solve(prob, saveat=t)

plot(sol, idxs=(2))

savefig("03j.png")

plot(sol, idxs=(1, 2))

savefig("04j.png")

w = 1
g = 4

function P(t)
    return cos(2*t)
end

function syst(dy, y, p, t)
    dy[1] = y[2]
    dy[2] = -g*y[2]-w*y[1] + P(t)
end

prob = ODEProblem(syst, u0, tspan)
sol = solve(prob, saveat=t)

plot(sol, idxs=(2))

savefig("05j.png")

plot(sol, idxs=(1, 2))

savefig("06j.png")


