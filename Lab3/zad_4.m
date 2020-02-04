%Marcin Sawczuk

%Zadanie 4
clear; %wyczyszczenie

iteracje=10;%Ustawienie maksymalnej liczby iteracji
epsylon=0.0000001;%Ustawienie precyzji wyszukiwania rozwi�zania r�wnania

x0=2; %Punkt startowy


rownanie=@(x) x^3-2*x^2-11*x+12;%R�wnanie w kt�rym szukamy pierwiastk�w
pochodna_rownania=@(x) 3*x^2-4*x-11;%Pochodna r�wnania

%Ustawienie parametr�w:
ostatni_x=x0;
nowy_x=ostatni_x-(rownanie(ostatni_x)/pochodna_rownania(ostatni_x));

%Wyszukiwanie pierwiastk�w r�wnania zdefiniowanym zestawem regu�
while( abs(rownanie(ostatni_x))>epsylon && abs(ostatni_x-nowy_x)>=epsylon && iteracje > 0)
    ostatni_x=nowy_x;
    nowy_x=ostatni_x-(rownanie(ostatni_x)/pochodna_rownania(ostatni_x));
    iteracje=iteracje-1;  
end
%kryterium dok�adno�ci
if abs(rownanie(ostatni_x))<=epsylon
    disp('Znaleziono rozwi�zanie:');
    disp(["x=",num2str(nowy_x)]);
    disp(["f(x)=",num2str(rownanie(nowy_x))]);
else
    disp('Nie znaleziono rozwi�zania');
end