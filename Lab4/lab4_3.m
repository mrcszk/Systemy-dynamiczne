%Marcin Sawczuk

%Cz�� I
s = tf('s');

%zapisanie filtr�w
g_d = 1/(4*s+1);
g_g = 0.4*s/(0.4*s+1);
g_p = s/(s^2+2*s+1);
g_2 = 1/(s^2+0.1*s+1);

figure(1)
bode(g_d);%charakterystyka
title('Dolnoprzepustowy G_D(S) = 1/(4*s+1)');%tytu�

figure(2)
bode(g_g);
title('G�rnoprzepustowy G_G(S) = 0.4*s/(0.4*s+1)');

figure(3)
bode(g_p);
title('Pasmowoprzepustowy G_P(S) = s/(s^2+2*s+1)');

figure(4)
bode(g_2);
title('Filtr drugiego rz�du G_2(S) = 1/(s^2+0.1*s+1)');
%%
%Cz�� II
clear;
%Zapisanie warto�� z kospektu
A = [2 3 1 2 4];
W = [0.001 1 30 0.01 5];
F = [1 5 2 1 0];
x = 4;
for n = 1:5 %iteracja dla ka�dego podpunktu
  a = A(n);
  w = W(n);
  f = F(n);
  sim("model4_3_1"); %symulacja
  figure(n);
  if(x==1)
    plot(ans.low);
    y = "Filtr dolnoprzepustowy:";%nazwa u�ywana w tytule
  elseif(x==2)
    plot(ans.high);
    y = "Filtr g�rnoprzepustowy:";
  elseif(x==3)
    plot(ans.band);
    y = "Filtr pasmoprzepustowy:";
  elseif(x==4)
    plot(ans.sec);
    y = "Filtr drugiego rz�du:";
  end
  title(strcat(y, "A=",num2str(a),", w=",num2str(w),", f=",num2str(f)));%tytu� wykresu
  ylabel('Amplituda[dB]')
end

%%

% Cz�� III - suma podanych sygna��w sinusoidalnych
clear;%wyczyszczenie
%Zapisanie warto�� z kospektu
a1=2; a2=3; a3=1; a4=2; a5=4;
w1=0.001; w2=1; w3=30; w4=0.01; w5=5;
f1=1; f2=5; f3=2; f4=1; f5=0;

%Wykres dla ka�dego z filtr�w
sim("model4_3_2"); 
figure();
plot(ans.low);%wykres
title("Suma sygna��w sinusoidalnych - filtr dolnoprzepustowy.");%tytu�
ylabel('Amplituda[dB]')

figure();
plot(ans.high);
title("Suma sygna��w sinusoidalnych - filtr g�rnoprzepustowy.");
ylabel('Amplituda[dB]')

figure();
plot(ans.band);
title("Suma sygna��w sinusoidalnych - filtr pasmoprzepustowy.");
ylabel('Amplituda[dB]')

figure();
plot(ans.sec);
title("Suma sygna��w sinusoidalnych - filtr drugiego rz�du.");
ylabel('Amplituda[dB]')
