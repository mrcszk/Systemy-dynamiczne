% Marcin Sawczuk

% Zadanie 1
% Symulacja dla systemu Lorenza
clear;% wyczyszczenie

figure; % wykres
hold on; % aby móc nanosiæ na wykres

% wartosci czasowe
t_0 = 0; % czas poczatkowy
t_k = 100; % czas koñcowy
t_s = 1/100; % przedzial miedzy kolejnymi czasami

% zmienne do wzoru
s = 10;
b = 8/3;
r = 28;

%rysowanie wykresów
X(:,1) = [1;2;20];
T(1)=t_0;
for j=1:t_k/t_s + 1
    X(:,j+1)=X(:,j) + t_s * lorenz(X(:,j), s, r, b);
    T(j+1) = t_0 + t_s * (j);
end
plot3(X(1,:),X(2,:),X(3,:)); % rysowanie wykresu

axis([-20 20 -30 30 0 50]); % ustawienie rozmiaru wykresu
title('Przyk³adowa trajektoria fazowa równañ Lorenza'); % tytu³ wykresu
xlabel('x1'); % podpis osi x
ylabel('x2'); % podpis osi y
zlabel('x3'); % podpis osi z
view([1 15 3]); % miejsce, z którego widzimy wykres
hold off;

%%
% Symulacja dla oscylatora Van der Pol’a
clear; % wyczyszczenie zmiennych

eps = 1; %deklaracja epsilona do funkcji symulujacej
%Warunki pocz¹tkowe
init=[linspace(-5, 5, 50); linspace(-5, 5, 50)];
t_0 = 0; % czas poczatkowy
t_k = 100; % czas koñcowy
t_s = 1/100; % przedzial miedzy kolejnymi czasami

figure; % wykres
hold on; % aby móc nanosiæ na wykres
for i=1:length(init)% pêtla symuluj¹ca
    X(:,1)=init(:,i);
    T(1)=t_0;
    for j=1:t_k/t_s + 1 
        X(:,j+1) = X(:,j) + t_s * vanderpol(X(:,j), eps); % wyliczenie
        T(j+1) = t_0 + t_s * (j);
    end
    plot(X(1,:),X(2,:), 'g'); % nanoszenie na wykres
end
axis([-5 5 -5 5]);  % ustawienie rozmiaru wykresu
title('Portret fazowy oscylatora Van der Pola'); % tytu³ wykresu
xlabel('x1'); % podpis osi x
ylabel('x2'); % podpis osi y
hold off;