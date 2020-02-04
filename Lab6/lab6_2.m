%Marcin Sawczuk

% Zadanie 2
clear; % wyczyszczenie

%Warunki pocz¹tkowe
init=[linspace(-5, 5, 45); linspace(-5, 5, 45)];
t_0 = 0; % czas poczatkowy
t_k = 10; % czas koñcowy
t_s = 1/100; % przedzial miedzy kolejnymi czasami

%wektor z kolejnymi epsilonami
eps = [-50, -10, -2, -1, -0.1, 0, 0.1, 1, 2, 3.5, 5, 10, 50];

for k=1:length(eps) % pêtla podstawi¹j¹ca za k ka¿d¹ wartoœæ z eps
    figure; % wykres
    hold on;
    for i=1:length(init) % Symulacja oscylatora Van der Pol’a
        X(:,1)=init(:,i);
        T(1)=t_0;
        for j=1:t_k/t_s + 1
            X(:,j+1)=X(:,j) + t_s * vanderpol(X(:,j), eps(k));
            T(j+1) = t_0 + t_s * (j);
        end
        plot(X(1,:),X(2,:), 'b'); % narysowanie wykresu
    end    
    axis([-5 5 -5 5]); % ustawienie rozmiaru wykresu
    title(['epsilon = ' num2str(eps(k))]); % tytu³ wykresu
    xlabel('x1'); % podpis osi x
    ylabel('x2'); % podpis osi y
    hold off;
end