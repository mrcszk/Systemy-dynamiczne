%Marcin Sawczuk

fgr=sqrt(power(length('Marcin'),2)+power(length('Sawczuk'),2));%cz�stotliwo�� graniczna sqrt(len(imie^2+nazwisko^2))
f=(1/10)*fgr; %aby t�umi� o co najmniej 20dB cz�stotliwo�ci wy�sze ni� cz�stotliwo�� graniczna
RC = 1/(2*pi*f) %wy�wietlenie RC