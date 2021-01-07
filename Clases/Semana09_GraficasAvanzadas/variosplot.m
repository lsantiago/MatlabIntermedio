clc
clear all
close all

fecha = 2013:2017;
salto = [0.9 1.4 1.7 1.3 1.8];
titulos = {'plot', 'bar', 'area', 'stem'};

for i = 1:4
    subplot(2, 2, i)
    eval([titulos{i} '(fecha, salto)'])
    title(titulos{i})
    xlabel('Año')
    ylabel('Población (miles)')
end

%%
clf
subplot(2, 1, 1)
plot(fecha, salto)

subplot(2, 2, 3)
area(fecha, salto)
subplot(2, 2, 4)
stem(fecha, salto)

%%
clf
subplot(2, 2, 1)
plot(fecha, salto)

subplot(2, 2, 3)
area(fecha, salto)
subplot(1, 2, 2)
stem(fecha, salto)



    