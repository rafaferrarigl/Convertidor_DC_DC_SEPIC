%?????????????????
%??????????????????
%??????????????????????
%???????????????????????

%Autor: Rafael Ferrari
%Version: 1.0
%Convertidor DC-DC Elevador-Reductor o Boost-Buckideal

close all
tsim   =    0.150;         % Tiempo para la simulacion

%Datos
Fs     =    20e3;          % Frecuencia de conmutacion 
Ts     =    1/Fs;          % Periodo 
D      =    0.5;           % Ciclo de trabajo
Vd     =    12;            % Voltaje de entrada       
R      =    100;           % Carga Resistiva
L1      =    470e-6;        % Bobina o Inductor (uH)
C1      =    120e-6;        % Capacitor (uF)
L2      =    470e-6; 
C2       =    120e-6;
%Calculo de paraetros del convertidor:

Vo = (D/(1-D))*-Vd;

%Codigo con la vinculacion de codigo y simulacion
mysets=simset('Solver', 'ode23tb','MaxStep',1e-6,'RelTol',10^-5);
tt1=sim('SEPIC',tsim,mysets);

%Graficas
figure(1)
plot(tt1,V_o)
hold on
xlabel('Tiempo (segundos)')
ylabel('Tension (Volts)')
title('Tension de salida en la carga  V_{O}')
grid

