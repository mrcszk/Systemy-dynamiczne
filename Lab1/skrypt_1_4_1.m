% Marcin Sawczuk
% skrypt do zadania 1, wyœwietlaj¹cy 3 wykresy, na których badany jest 
% wp³yw parametrów 
clear all; % wyczyszczenie
WPC=4; %wartosc pocz¹tkowa
R=10; %opor
C=0.1; %pojemnosc
K=1/(R*C); %zmienna
vWPC=[4,5,6,7,8,9]; %wartoœci, które bêdziemy postawiali za WPC

open('first') %schemat simulinkowy modelu
figure(1); % pierwszy wykres
for z = 1:length(vWPC) % pêtla iteruje po ka¿dym elemencie vWPC
    WPC = vWPC(z); % podstawienie pod WPC innej wartoœci
    sim('first') %symulacja modelu
    plot(ans.tout,ans.x) %tworzenie wykresu
    hold on  % zapisuje wszystkie iteracje na jednym wykresie
    leg(z) = string(WPC); % do tworzenia legendy
end
xlabel('Czas[s]'); %podpis osi X
ylabel('Napiecie[v]'); %podpis osi Y
legend(leg); % tworzy wykres
grid on; %tworzenie siatki
title('Wykres sterowania i napiecia od czasu dla ró¿nych wartoœci WPC'); %tytul wykresu

figure(2); % drugi wykres
WPC=4; % postawienie wartoœci z zadania
vR=[5,10,15,20,25]; %wartoœci, które bêdziemy postawiali za R
for z = 1:length(vR) % pêtla iteruje po ka¿dym elemencie vR
    R = vR(z);  % podstawienie pod R innej wartoœci
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
title('Wykres sterowania i napiecia od czasu dla ró¿nych wartoœci R'); %tytul wykresu

figure(3); % trzeci wykres
R=10; % postawienie wartoœci z zadania
vC=[0.1,0.5,1,1.5,2]; % %wartoœci, które bêdziemy postawiali za C
for z = 1:length(vC) % pêtla iteruje po ka¿dym elemencie vC
    C = vC(z); % podstawienie pod C innej wartoœci
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
title('Wykres sterowania i napiecia od czasu dla ró¿nych wartoœci C'); %tytul wykresu


