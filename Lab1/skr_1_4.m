% Marcin Sawczuk
% skrypt do rozwi¹zania zadania 1.4 z obwodem elektrycznym(zad 6)
R=1000000; % opór
C=0.000001; % pojemnosc

sim('zad1_4') % symulacja modelu

plot(ans.x); % rysowanie wykresu
xlabel('Czas[s]'); % podpis osi X
ylabel('Napiecie[v]'); % podpis osi Y
grid on; % tworzenie siatki
title('Przebieg napiêcia w funkcji czasu'); % tytul wykresu