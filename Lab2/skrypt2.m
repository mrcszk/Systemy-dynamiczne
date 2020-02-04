% Marcin Sawczuk
% Skrypt umo�liwiaj�cy narysowanie dowolnego portretu fazowego.
clear % wyczyszczenie
space = linspace(0,5 * pi, 100); %Przestrze� dostarczaj�ca parametry do
                                    %wygenerowania warunk�w pocz�tkowych

P=eye(2); %tworzy  macierz jednostkow�

%J=[0,0;0,0]; %Podw�jna warto�� w�asna r�wna 0, liniowy dzielnik elementarny.
%J=[0,1;0,0]; %Podw�jna warto�� w�asna r�wna 0, nieliniowy dzielnik elementarny.
%J=[0,0;0,-1]; %Pierwsza warto�� w�asna r�wna 0, druga warto�� w�asna ujemna.
J=[-1,0;0,-2]; %Obie warto�ci w�asne, r�ne od siebie, ujemne.
%J=[-1,0;0,-1]; %Podw�jna warto�� w�asna ujemna, liniowy dzielnik elementarny.
%J=[-1,1;0,-1]; %Podw�jna warto�� w�asna ujemna, nieliniowy dzielnik elementarny.
%J=[-1,0;0,1]; %Warto�ci w�asne o r�nych znakach.
%J=[0,-1;1,0]; %Warto�ci w�asne zespolone, sprz�one.
%J=[-1,-1;1,-1]; %Warto�ci w�asne zespolone, sprz�one, rzeczywista cz�� ujemna.

A=P*J*P^-1; % Stworzenie macierzy A
for z=1:100 % tworzenie wykresu w p�tli
    % warto�ci pocz�tkowe le�� na okr�gu jednostkowym o �rodku w (0, 0) 
    WPC(1)=sin(space(z));% ustawianie wektora warunku pocz�tkowego
    WPC(2)=cos(space(z)); % ustawianie wektora warunku pocz�tkowego
    if(J(1,2)==-J(2,1) && J(1,1)==0 && J(2,2)==0)%dla okregow
        WPC=WPC*z;  %mnozymy wartosci poczatkowe przez zmienna iteracyjna,
                    %by okregi na wykresie nie nachodzily na siebie
    end
    sim('model');%symulacja modelu 
    figure(1) % pierwszy wykres
    plot(ans.x(:,1),ans.x(:,2)); % rysowanie wykresu
    grid; %tworzenie siatki
    hold on; %umo�liwienie nak�adania si� kolejnych rysowanych trajektorii
    % warto�ci pocz�tkowe le�� na brzegu kwadratu o boku jeden i �rodku w (0, 0)
    r=max(abs(sin(space(z))),abs(cos(space(z))));%  do ustawiania wektora warunku pocz�tkowego
    WPC(1)=sin(space(z))/r; % ustawianie wektora warunku pocz�tkowego
    WPC(2)=cos(space(z))/r; % ustawianie wektora warunku pocz�tkowego
    sim('model');%symulacja modelu
    figure(2) % drugi wykres
    plot(ans.x(:,1),ans.x(:,2)); % rysowanie wykresu
    grid; %tworzenie siatki
    hold on; %umo�liwienie nak�adania si� kolejnych rysowanych trajektorii
end
figure(1) % podpis i osie do pierwszego wykresu
quiver(0,0,P(1,1), P(1,2),'linewidth',3); % rysowanie wektor�w w�asnych
quiver(0,0,P(2,1), P(2,2),'linewidth',3); % rysowanie wektor�w w�asnych
xlabel('x1'); %podpis osi X
ylabel('x2'); %podpis osi Y
figure(2) % podpis i osie do drugiego wykresu
quiver(0,0,P(1,1), P(1,2),'linewidth',3); % rysowanie wektor�w w�asnych
quiver(0,0,P(2,1), P(2,2),'linewidth',3); % rysowanie wektor�w w�asnych
xlabel('x1'); %podpis osi X
ylabel('x2'); %podpis osi Y
hold off; % koniec rysowania wykres�w
