%Marcin Sawczuk

%Zadanie 2
clear;%czyszczenie
I=length('Marcin');
N=length('Sawczuk');

%Ustawienie odpowiednich wartoœci w macierzach
A_c=[0 1;-I -N];
B_c=[0;1];
C_c=[1 0; 0 1];
D_c=[0;0];

h=1;%Czas próbkowania

A_d=expm(h*A_c);%U¿ycie wzoru z konspektu

syms t; %zdefiniowanie zmiennej symbolicznej t

%Rzutowanie na Double
B_d=double(int(expm(t*A_c)*B_c,t,0,h));
C_d=C_c; 
D_d=D_c;

%Pocz¹tkowy stan systemu
WPC_d=5;
WPC_c=WPC_d;

sim('model_lab3_2.slx');

figure(1);%wykres 1
plot(ans.tout,ans.x(:,1),'red');
hold on;
plot(ans.tout,ans.x(:,3),'blue');
title("Dyskretno-ci¹g³y x1(t),");% tytu³ wykresu
xlabel("czas t");%podpis osi x
ylabel("x1(t)");%podpis osi y

figure(2);% wykres 2
plot(ans.tout,ans.x(:,2),'red');
hold on;
plot(ans.tout,ans.x(:,4),'blue');

title("Dyskretno-ci¹g³y x2(t)");% tytu³ wykresu
xlabel("czas t");%podpis osi x
ylabel("x2(t)");%podpis osi y