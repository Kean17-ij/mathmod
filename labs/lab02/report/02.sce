n=2.8
s=6.8
fi=3*%pi/4

function dr=f(tetha, r)
    dr = r/sqrt(n*n-1)
endfunction

function xt=f2(t)
    xt = tan(fi+%pi)*t
endfunction

tetha0 = 0
tetha = 0:0.01:2*%pi
t = 0:1:500
r0 = s/(n+1)
r=ode(r0, tetha0, tetha, f)
plot2d(t, f2(t), style = color('red'))
polarplot(tetha, r, style = color('green'))

r0 = s/(n-1)
r=ode(r0, tetha0, tetha, f)
figure()
plot2d(t, f2(t), style = color('red'))
polarplot(tetha, r, style = color('green'))
