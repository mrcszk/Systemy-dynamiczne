%Marcin Sawczuk

% Zadanie 3
clear;
a = 1; % parametr
T = 20; % prawy koniec odcinka na którym rozwiazujemy równanie za pomoca ode45
t = 0:0.2:T; % wektor czasu

figure % wykres I
hold on; % aby móc nanosiæ na wykres

for p = -2:1:2 %petla po wartosciach poczatkowych
        sol = ode45(@(t,x) a*x - x^3, [0 T], p); % rozwiazanie równania rózniczkowego (system nieliniowy)
        y = deval(sol, t); % ewaluacja
        plot(t,y,'r') % narysowanie wykresu
end

xlabel('x1'); % podpis osi x
ylabel('x2'); % podpis osi y
title('x'' = ax - x^3') % tytu³ wykresu

figure % wykres II

x = 0:0.1:20;
y_1 = 0*x;
y_2 = sqrt(x);
y_3 = -sqrt(x);
hold on
plot(x, y_1, 'r') % narysowanie wykresu
plot(x, y_2, 'g') % narysowanie wykresu
plot(x, y_3, 'b') % narysowanie wykresu

xlabel('a') % podpis osi x
ylabel('Punkty równowagi') % podpis osi y
title('Wartosci punktów równowagi') % tytu³ wykresu
legend('1-szy punkt równowagi', '2-gi punkt równowagi', '3-ci punkt równowagi') % legenda