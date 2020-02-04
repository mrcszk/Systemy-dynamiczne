%Marcin Sawczuk

%Zadanie 4
clear; %wyczyszczenie

iteracje=10;%Ustawienie maksymalnej liczby iteracji
epsylon=0.0000001;%Ustawienie precyzji wyszukiwania rozwi¹zania równania

x0=2; %Punkt startowy


rownanie=@(x) x^3-2*x^2-11*x+12;%Równanie w którym szukamy pierwiastków
pochodna_rownania=@(x) 3*x^2-4*x-11;%Pochodna równania

%Ustawienie parametrów:
ostatni_x=x0;
nowy_x=ostatni_x-(rownanie(ostatni_x)/pochodna_rownania(ostatni_x));

%Wyszukiwanie pierwiastków równania zdefiniowanym zestawem regu³
while( abs(rownanie(ostatni_x))>epsylon && abs(ostatni_x-nowy_x)>=epsylon && iteracje > 0)
    ostatni_x=nowy_x;
    nowy_x=ostatni_x-(rownanie(ostatni_x)/pochodna_rownania(ostatni_x));
    iteracje=iteracje-1;  
end
%kryterium dok³adnoœci
if abs(rownanie(ostatni_x))<=epsylon
    disp('Znaleziono rozwi¹zanie:');
    disp(["x=",num2str(nowy_x)]);
    disp(["f(x)=",num2str(rownanie(nowy_x))]);
else
    disp('Nie znaleziono rozwi¹zania');
end