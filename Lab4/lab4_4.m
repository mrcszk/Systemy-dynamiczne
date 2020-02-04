%Marcin Sawczuk

fgr=sqrt(power(length('Marcin'),2)+power(length('Sawczuk'),2));%czêstotliwoœæ graniczna sqrt(len(imie^2+nazwisko^2))
f=(1/10)*fgr; %aby t³umiæ o co najmniej 20dB czêstotliwoœci wy¿sze ni¿ czêstotliwoœæ graniczna
RC = 1/(2*pi*f) %wyœwietlenie RC