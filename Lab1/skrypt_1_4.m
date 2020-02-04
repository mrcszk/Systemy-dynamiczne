% Marcin Sawczuk
% skrypt do zada� 2-5
WPC=4; %warto�� pocz�tkowa
R=100; %op�r
C=0.1; %pojemnosc
K=1/(R*C); %zmienna

open('first') %schemat simulinkowy modelu
sim('first',R*C*5) %symulacja modelu

plot(ans.tout,ans.x) %tworzenie wykresu
xlabel('Czas[s]'); %podpis osi X
ylabel('Napiecie[v]'); %podpis osi Y
grid on; %tworzenie siatki
title('Wykres sterowania i napiecia od czasu'); %tytul wykresu
