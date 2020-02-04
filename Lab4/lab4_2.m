%Marcin Sawczuk
clear;%wyczyszczenie

%zapisanie systemów
l = [1];
m = [1 1 2];

l2 = [1 0];
m2 = [1 -0.1 1];

g1 = tf(l,m);%transmitancja
g2 = tf(l2,m2);%transmitancja

pole(g1)%bieguny mianownika
pole(g2)%bieguny mianownika

isstable(g1)%sprawdzanie czy uk³ad otwarty jest stabilny
isstable(g2)%sprawdzanie czy uk³ad otwarty jest stabilny

nyquist(1+g1); % charakterystyka Nyquista
figure;
nyquist(1+g2); % charakterystyka Nyquista

g3 = feedback(g2,1);%zamkniêcie uk³adu
isstable(g3)%sprawdzanie czy uk³ad zamkniêty jest stabilny