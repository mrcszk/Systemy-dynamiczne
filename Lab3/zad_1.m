%Marcin Sawczuk

%Zadanie 1
clear;%czyszczenie
WPC=1; %warunek pocz¹tkowy WPC

%Wartoœci parametru lambda, po nich iterujemy
lambdas=[-3, -1, -0.5, 0, 0.5, 1, 3];

for lambda=lambdas % ka¿da wartoœc z lambdas    
    figure; %wykres
    hold on;
    
    title(strcat('Wykres przy lambda = ',num2str(lambda),' WPC = ',num2str(WPC)));% tytu³ wykresu
    xlabel('k');%podpis osi x
    ylabel('x(k)');%podpis osi y
    
    lambda;
    sim('model_lab3_1');
    
    for i=1:11
        scatter(i,ans.x(i),'filled'); %rysowanie wykresów
    end
end
hold off;