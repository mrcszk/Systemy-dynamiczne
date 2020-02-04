% Marcin Sawczuk
% skrypt do zadania 1, wy�wietlaj�cy 3 wykresy, na kt�rych badany jest 
% wp�yw parametr�w 
clear all; % wyczyszczenie
WPC=4; %wartosc pocz�tkowa
R=10; %opor
C=0.1; %pojemnosc
K=1/(R*C); %zmienna
vWPC=[4,5,6,7,8,9]; %warto�ci, kt�re b�dziemy postawiali za WPC

open('first') %schemat simulinkowy modelu
figure(1); % pierwszy wykres
for z = 1:length(vWPC) % p�tla iteruje po ka�dym elemencie vWPC
    WPC = vWPC(z); % podstawienie pod WPC innej warto�ci
    sim('first') %symulacja modelu
    plot(ans.tout,ans.x) %tworzenie wykresu
    hold on  % zapisuje wszystkie iteracje na jednym wykresie
    leg(z) = string(WPC); % do tworzenia legendy
end
xlabel('Czas[s]'); %podpis osi X
ylabel('Napiecie[v]'); %podpis osi Y
legend(leg); % tworzy wykres
grid on; %tworzenie siatki
title('Wykres sterowania i napiecia od czasu dla r�nych warto�ci WPC'); %tytul wykresu

figure(2); % drugi wykres
WPC=4; % postawienie warto�ci z zadania
vR=[5,10,15,20,25]; %warto�ci, kt�re b�dziemy postawiali za R
for z = 1:length(vR) % p�tla iteruje po ka�dym elemencie vR
    R = vR(z);  % podstawienie pod R innej warto�ci
    K=1/(R*C); % nowe podstawienie zmiennej
    sim('first') %symulacja modelu
    plot(ans.tout,ans.x) %tworzenie wykresu
    hold on % zapisuje wszystkie iteracje na jednym wykresie
    leg(z) = string(R); % do tworzenia legendy
end
xlabel('Czas[s]'); %podpis osi X
ylabel('Napiecie[v]'); %podpis osi Y
legend(leg); % tworzy wykres
grid on; %tworzenie siatki
title('Wykres sterowania i napiecia od czasu dla r�nych warto�ci R'); %tytul wykresu

figure(3); % trzeci wykres
R=10; % postawienie warto�ci z zadania
vC=[0.1,0.5,1,1.5,2]; % %warto�ci, kt�re b�dziemy postawiali za C
for z = 1:length(vC) % p�tla iteruje po ka�dym elemencie vC
    C = vC(z); % podstawienie pod C innej warto�ci
    K=1/(R*C); % nowe podstawienie zmiennej
    sim('first') %symulacja modelu
    plot(ans.tout,ans.x) %tworzenie wykresu
    hold on % zapisuje wszystkie iteracje na jednym wykresie
    leg(z) = string(C); % do tworzenia legendy
end
xlabel('Czas[s]'); %podpis osi X
ylabel('Napiecie[v]'); %podpis osi Y
legend(leg); %tworzenie legendy
grid on; %tworzenie siatki
title('Wykres sterowania i napiecia od czasu dla r�nych warto�ci C'); %tytul wykresu


