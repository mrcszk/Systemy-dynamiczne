%Marcin Sawczuk
clear; %czyszczenie
amp=10;
freqs = [1 3 5 7 10 50 100]; %ustawienie warto�ci jakie przyjmie zmienna w p�tli


for freq=freqs %przypisanie freq ka�dej warto�ci z freqs
    sim('model4_1',500);% symulacja
    figure;%wykres
    hold on;
    plot(ans.x);%rysowanie wykresu
    title(strcat('Wykres dla cz�stotliwo�ci = ',num2str(freq),'rad/s'));% tytu� wykresu
    grid on;%siatka
    hold off;
end