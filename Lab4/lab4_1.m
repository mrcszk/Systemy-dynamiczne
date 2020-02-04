%Marcin Sawczuk
clear; %czyszczenie
amp=10;
freqs = [1 3 5 7 10 50 100]; %ustawienie wartoœci jakie przyjmie zmienna w pêtli


for freq=freqs %przypisanie freq ka¿dej wartoœci z freqs
    sim('model4_1',500);% symulacja
    figure;%wykres
    hold on;
    plot(ans.x);%rysowanie wykresu
    title(strcat('Wykres dla czêstotliwoœci = ',num2str(freq),'rad/s'));% tytu³ wykresu
    grid on;%siatka
    hold off;
end