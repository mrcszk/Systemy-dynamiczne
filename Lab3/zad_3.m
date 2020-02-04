%Marcin Sawczuk

%Zadanie 3
clear; %czyszczenie
K_0 = 1000; %kapita� pocz�tkowy
n = 5; %czas trwania inwestycji
r = 0.3; %nominalna stopa procentowa
ms = [1,2,4,12];%liczba kapitalizacji w roku
hold on; %umo�liwienie nak�adania si� wykres�w
for m=ms % dla ka�dej warto�ci z ms
    for i = 0:n %w p�tli z odpowiedniego wzoru wyliczany jest stan konta po i latach
            K_tmp = K_0*(1+r/m)^(m*i);
            if m==1
                scatter(i, K_tmp, 'r'); %rysowanie wykresu
            elseif m==2
                scatter(i, K_tmp, 'y');
            elseif m==4
                scatter(i, K_tmp, 'g');
            elseif m==12
                scatter(i, K_tmp, 'b');
            end                
    end
end
xlabel('Czas trwania inwestycji [1 rok]'); %podpis osi x
ylabel('Stan konta [z�]'); %podpis osi y
title({'Kapitalizacja odsetek:','czerwony = 1 w roku,','zolty = 2 w roku,', 'zielony = 4 w roku,',' niebieski = 12 w roku.'}); % tytu� wykresu
grid on; %tworzenie siatki

