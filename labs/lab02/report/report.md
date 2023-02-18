---
## Front matter
title: "Отчет по лабораторной работе №2"
subtitle: "Задача о погоне - вариант 10"
author: "Кеан Путхеаро	НПИбд-02-20"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Приведем один из примеров построения математических моделей для выбора правильной стратегии при решении задач поиска. 
Например, рассмотрим задачу преследования браконьеров береговой охраной. На море в тумане катер береговой охраны преследует лодку браконьеров. Через определенный промежуток времени туман рассеивается, и лодка обнаруживается на расстоянии k км от катера. Затем лодка снова скрывается в тумане и уходит прямолинейно в неизвестном направлении. Известно, что скорость катера в n раза больше скорости браконьерской лодки. 
Необходимо определить по какой траектории необходимо двигаться катеру, чтоб нагнать лодку.

# Задание

1. Провести необходимые рассуждения и вывод дифференциальных уравнений, если скорость катера больше скорости лодки в n раз.
2. Построить траекторию движения катера и лодки для двух случаев. 
3. Определить по графику точку пересечения катера и лодки.

# Выполнение лабораторной работы

Принимаем за $t_0=0, X_0=0$  - место нахождения лодки браконьеров в момент обнаружения, $X_0=k$   - место нахождения катера береговой охраны относительно лодки браконьеров в момент обнаружения лодки.

Введем полярные координаты. Считаем, что полюс - это точка обнаружения лодки браконьеров $x_0=0 (\theta=x_0=0)$, а полярная ось r проходит через точку нахождения катера береговой охраны.

Чтобы найти расстояние $x$ (расстояние после которого катер начнет двигаться вокруг полюса), необходимо составить простое уравнение. Пусть через время $t$ катер и лодка окажутся на одном расстоянии $x$ от полюса. За это время лодка пройдет $x$, а катер $x-k$ (или $x+k$, в зависимости от начального положения катера относительно полюса). Время, за которое они пройдут это расстояние, вычисляется как $\frac{x}{υ}$ или $\frac{x+k}{υ}$ (для второго случая $\frac{x-k}{υ}$).  Так как время одно и то же, то эти величины одинаковы. Тогда неизвестное расстояние можно найти из следующего уравнения:  $\frac{x}{υ} = \frac{x+k}{υ}$ - в первом случае, $\frac{x}{υ} =  \frac{x-k}{υ}$ во втором случае.

Отсюда мы найдем два значения $x_1$ и $x_2$, задачу будем решать для двух случаев. 

$x_1=\frac{k}{n+1}$ ,при $\theta=0$

$x_2=\frac{k}{n-1}$ ,при $\theta=-\pi$

После того, как катер береговой охраны окажется на одном расстоянии от полюса, что и лодка, он должен сменить прямолинейную траекторию и начать двигаться вокруг полюса удаляясь от него со скоростью лодки $υ$. Для этого скорость катера раскладываем на две составляющие: $υ_r$ - радиальная скорость и $υ_t$- тангенциальная скорость. Радиальная скорость - это скорость, с которой катер удаляется от полюса $υ_r=\frac{dr}{dt}$. Нам нужно, чтобы эта скорость была равна скорости лодки, поэтому полагаем $υ=\frac{dr}{dt}$.
Тангенциальная скорость – это линейная скорость вращения катера относительно полюса. Она равна произведению угловой скорости $\frac{d\theta}{dt}$  на радиус $r$, $υr=r\frac{d\theta}{dt}$
Найдем тангенциальную скорость для нашей задачи $υ_t=r\frac{d\theta}{dt}$.
Вектора образуют прямоугольный треугольник, откуда по теореме Пифагора можно найти тангенциальную скорость $υ_t= \sqrt{n^2 υ_r^2-v^2}$. Поскольку, радиальная скорость равна $υ$, то тангенциальную скорость находим из уравнения $υ_t= \sqrt{n^2 υ^2-υ^2 }$. Следовательно, $υ_τ=υ\sqrt{n^2-1}$.

Тогда получаем $r\frac{d\theta}{dt}=υ\sqrt{n^2-1}$

Решение исходной задачи сводится к решению системы из двух дифференциальных уравнений 

$$
 \begin{cases}
   \frac{dr}{dt}=υ
	\\   
	r\frac{d\theta}{dt}=υ\sqrt{n^2-1}
 \end{cases}
$$

с начальными условиями

$$
 \begin{cases}
   \theta_0=0
   \\
	r_0=\frac{k}{n+1}
 \end{cases}
\
$$

$$
 \begin{cases}
   \theta_0=-\pi
   \\
	r_0=\frac{k}{n-1}
 \end{cases}
\
$$

Исключая из полученной системы производную по t, можно перейти к следующему уравнению: $\frac{dr}{d\theta}=\frac{r}{\sqrt{n^2-1}}$

Начальные условия остаются прежними. Решив это уравнение, мы получим
траекторию движения катера в полярных координатах. 
Теперь, когда нам известно все, что нам нужно, построим траекторию движения катера и лодки для двух случаев.

## Условие задачи

![вариант](image/var.png){ #fig:000 width=70% height=70% }

На море в тумане катер береговой охраны преследует лодку браконьеров.
Через определенный промежуток времени туман рассеивается, и лодка обнаруживается на расстоянии 6.8 км от катера. 
Затем лодка снова скрывается в тумане и уходит прямолинейно в неизвестном направлении. 
Известно, что скорость катера в 2.8 раза больше скорости браконьерской лодки

## Код программы (Julia)

```
using Plots
using DifferentialEquations

n=2.8
s=6.8
fi = 3*pi/4

function f(r, p, t)
    dr = r/sqrt(n^2-1)
    return dr
end

function f2(t)
    xt = tan(fi+pi)*t
    return xt
end
    
r0 = s/(n+1)

tetha0 = collect(LinRange(0, 2*pi, 500))
prob = ODEProblem(f, r0, (0, 2*pi))
sol = solve(prob, saveat = tetha0)

t = collect(LinRange(0, 12, 500))
r1=[]
tetha1=[]
for i in t
    push!(r1, sqrt(i^2 + f2(i)^2))
    push!(tetha1, atan(f2(i)/i))
end

plot(sol, proj=:polar, label="катер")
plot!(tetha1, r1, proj=:polar, label="лодка")

r0 = s/(n-1)
tetha0 = collect(LinRange(0, 2*pi, 500))
prob = ODEProblem(f, r0, (0, 2*pi))
sol = solve(prob, saveat = tetha0)

t = collect(LinRange(0, 31, 500))
r1=[]
tetha1=[]
for i in t
    push!(r1, sqrt(i^2 + f2(i)^2))
    push!(tetha1, atan(f2(i)/i))
end
plot(sol, proj=:polar, label="катер")
plot!(tetha1, r1, proj=:polar, label="лодка")



```


## Код программы (Scilab)

```
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

```

## Решение

![траектории для случая 1 (Scilab)](image/01.png){ #fig:001 width=70% height=70% }

![траектории для случая 1 (Julia)](image/1.png){ #fig:002 width=70% height=70% }

Точка пересечения графиков - точка пересечения катера и лодки, исходя из графика, имеет координаты
$$
 \begin{cases}
   \theta=315
   \\
	r=15
 \end{cases}
\
$$

![траектории для случая 2 (Scilab)](image/02.png){ #fig:003 width=70% height=70% }

![траектории для случая 2 (Julia)](image/2.png){ #fig:004 width=70% height=70% }


Точка пересечения графиков - точка пересечения катера и лодки, исходя из графика, имеет координаты
$$
 \begin{cases}
   \theta=315
   \\
	r=30
 \end{cases}
\
$$

Наблюдаем, что при погоне «по часовой стрелке» для достижения цели потребуется пройти меньшее расстояние.

# Выводы

Рассмотрели задачу о погоне. Провели анализ и вывод дифференциальных уравнений. Смоделировали ситуацию.


# Список литературы{.unnumbered}

1. (Лабораторная работа №2) 

https://esystem.rudn.ru/mod/resource/view.php?id=967300

2. (Задания к лабораторной работе № 2 по вариантам) 

https://esystem.rudn.ru/mod/resource/view.php?id=967301

