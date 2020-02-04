% Marcin Sawczuk
% Skrypt umo¿liwiaj¹cy narysowanie dowolnego portretu fazowego.
clear % wyczyszczenie
space = linspace(0,5 * pi, 100); %Przestrzeñ dostarczaj¹ca parametry do
                                    %wygenerowania warunków pocz¹tkowych

P=eye(2); %tworzy  macierz jednostkow¹

%J=[0,0;0,0]; %Podwójna wartoœæ w³asna równa 0, liniowy dzielnik elementarny.
%J=[0,1;0,0]; %Podwójna wartoœæ w³asna równa 0, nieliniowy dzielnik elementarny.
%J=[0,0;0,-1]; %Pierwsza wartoœæ w³asna równa 0, druga wartoœæ w³asna ujemna.
J=[-1,0;0,-2]; %Obie wartoœci w³asne, ró¿ne od siebie, ujemne.
%J=[-1,0;0,-1]; %Podwójna wartoœæ w³asna ujemna, liniowy dzielnik elementarny.
%J=[-1,1;0,-1]; %Podwójna wartoœæ w³asna ujemna, nieliniowy dzielnik elementarny.
%J=[-1,0;0,1]; %Wartoœci w³asne o ró¿nych znakach.
%J=[0,-1;1,0]; %Wartoœci w³asne zespolone, sprzê¿one.
%J=[-1,-1;1,-1]; %Wartoœci w³asne zespolone, sprzê¿one, rzeczywista czêœæ ujemna.

A=P*J*P^-1; % Stworzenie macierzy A
for z=1:100 % tworzenie wykresu w pêtli
    % wartoœci pocz¹tkowe le¿¹ na okrêgu jednostkowym o œrodku w (0, 0) 
    WPC(1)=sin(space(z));% ustawianie wektora warunku pocz¹tkowego
    WPC(2)=cos(space(z)); % ustawianie wektora warunku pocz¹tkowego
    if(J(1,2)==-J(2,1) && J(1,1)==0 && J(2,2)==0)%dla okregow
        WPC=WPC*z;  %mnozymy wartosci poczatkowe przez zmienna iteracyjna,
                    %by okregi na wykresie nie nachodzily na siebie
    end
    sim('model');%symulacja modelu 
    figure(1) % pierwszy wykres
    plot(ans.x(:,1),ans.x(:,2)); % rysowanie wykresu
    grid; %tworzenie siatki
    hold on; %umo¿liwienie nak³adania siê kolejnych rysowanych trajektorii
    % wartoœci pocz¹tkowe le¿¹ na brzegu kwadratu o boku jeden i œrodku w (0, 0)
    r=max(abs(sin(space(z))),abs(cos(space(z))));%  do ustawiania wektora warunku pocz¹tkowego
    WPC(1)=sin(space(z))/r; % ustawianie wektora warunku pocz¹tkowego
    WPC(2)=cos(space(z))/r; % ustawianie wektora warunku pocz¹tkowego
    sim('model');%symulacja modelu
    figure(2) % drugi wykres
    plot(ans.x(:,1),ans.x(:,2)); % rysowanie wykresu
    grid; %tworzenie siatki
    hold on; %umo¿liwienie nak³adania siê kolejnych rysowanych trajektorii
end
figure(1) % podpis i osie do pierwszego wykresu
quiver(0,0,P(1,1), P(1,2),'linewidth',3); % rysowanie wektorów w³asnych
quiver(0,0,P(2,1), P(2,2),'linewidth',3); % rysowanie wektorów w³asnych
xlabel('x1'); %podpis osi X
ylabel('x2'); %podpis osi Y
figure(2) % podpis i osie do drugiego wykresu
quiver(0,0,P(1,1), P(1,2),'linewidth',3); % rysowanie wektorów w³asnych
quiver(0,0,P(2,1), P(2,2),'linewidth',3); % rysowanie wektorów w³asnych
xlabel('x1'); %podpis osi X
ylabel('x2'); %podpis osi Y
hold off; % koniec rysowania wykresów
