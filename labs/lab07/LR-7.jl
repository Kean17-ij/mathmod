1032205169%70+1

using Plots
using DifferentialEquations

a = 0.95
b = 0.0008
N = 995
n = 9

tmax = 7
tspan = (0, tmax)
t = collect(LinRange(0, tmax, 500))
    
function syst(dy, y, p, t)
    dy[1] = (a+b*y[1])*(N-y[1])
end

prob = ODEProblem(syst, [n], tspan)
sol = solve(prob, saveat=t)

plot(sol)

savefig("04.png")

a = 0.000095
b = 0.92
N = 995
n = 9

tmax = 0.1
tspan = (0, tmax)
t = collect(LinRange(0, tmax, 500))
    
function syst(dy, y, p, t)
    dy[1] = (a+b*y[1])*(N-y[1])
end

prob = ODEProblem(syst, [n], tspan)
sol = solve(prob, saveat=t)

plot(sol)

savefig("05.png")

a = 0.95
b = 0.93
N = 995
n = 9

tmax = 0.1
tspan = (0, tmax)
t = collect(LinRange(0, tmax, 500))
    
function syst(dy, y, p, t)
    dy[1] = (a*sin(t)+b*cos(9*t)*y[1])*(N-y[1])
end

prob = ODEProblem(syst, [n], tspan)
sol = solve(prob, saveat=t)

plot(sol)

savefig("06.png")


