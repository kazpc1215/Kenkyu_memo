reset
# set term postscript eps enhanced color size 6in,4in font "Times-Roman,35"
set term aqua enhanced font "Times-Roman,30"


set xl "mass [g]" offset 0,1
set x2l "radius [cm]" offset 0,-1
set yl "Q@^{*}_D [erg/g]" offset 1.5,0

set bmargin 2
set lmargin 7
set tmargin 2

set xtics nomirror offset 0,0.3 font ",30"
set x2tics offset 0,-0.5 font ",30"
set ytics offset 0.5 font ",30"

set grid
set format "10^{%L}"

set xr [1:1E30]

set key left top box width -11.5 spacing 1.0 font "Times-Roman,25"

set link x2 via (x/4./pi)**(1./3.) inverse 4.*pi*x**3.

unset link x2

set log

# set out "Q_D.eps"

p 9.0E7*(3./4./pi)**(-0.36/3.)*3.**(0.36/3.)*(x)**(-0.36/3.0) + 0.5*(3./4./pi)**(1.36/3.)*3.**(1.0-1.36/3.)*(x)**(1.36/3.) lw 2 t "Basalt, {/Symbol r} = 3 [g/cm^3], v_{imp} = 5 [km/s]",\
3.5E7*(3./4./pi)**(-0.38/3.)*3.**(0.38/3.)*(x)**(-0.38/3.0) + 0.3*(3./4./pi)**(1.36/3.)*3.**(1.0-1.36/3.)*(x)**(1.36/3.) lw 2 t "Basalt, {/Symbol r} = 3 [g/cm^3], v_{imp} = 3 [km/s]"


# set output

# !open Q_D.eps