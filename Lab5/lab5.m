%Marcin Sawczuk
% Przyk�ad 1
clear;
epsilon = 0.5; %parametr stoj�cy przy czynniku nieliniowym
T = 1000; %prawy kraniec odcinka na kt�rym rozwi�zujemy r�wnanie za pomoc� ode45
t = 0:0.2:T; %wektor czasu

figure(1) %1 wykres
hold on; %nak�adanie si� wykres�w

for param = -2:1:2 %p�tla
    sol = ode45(@(t,x) f1_1(t,x,epsilon), [0 T], param); %rozwi�zanie r�wnania r�niczkowego (system nieliniowy)
    y = deval(sol, t); %ewaluacja
    plot(t,y,'r') %narysowanie wykresu rozwi�zania

    sol = ode45(@(t,x) f1_2(t,x,epsilon), [0,T], param); %rozwi�zanie r�wnania r�niczkowego (linearyzacja w 0)
    y = deval(sol, t); %ewaluacja
    plot(t,y,'g') %narysowanie wykresu rozwi�zania

    sol = ode45(@(t,x) f1_3(t,x,epsilon), [0 T], param); % rozwi�zanie r�wnania r�niczkowego (linearyzacja w 1/epsilon)
    y = deval(sol, t); % ewaluacja
    plot(t,y,'b') % narysowanie wykresu rozwi�zania
end

axis([0 5 -10 5]) % wykres
title('Przyk�ad nr. 1') % tytu�
xlabel('t') % podpis osi x
ylabel('x(t)') % podpis osi y
legend('Rozwi�zanie bez linearyzacji - czerwony', 'Linearyzacja dla punktu r�wnowagi 0 - zielony', 'Linearyzacja dla punktu r�wnowagi 1/eps - niebieski') % legenda

%%
% Przyk�ad 2
clear;
T = 1000; %prawy kraniec odcinka na kt�rym rozwi�zujemy r�wnanie za pomoc� ode45
figure(2) % 2 wykres
hold on;

for i=-2:0.5:2
    for j=-2:0.5:2
        x0=[i,j];
        [~,Y]=ode45(@f2_1,[0, T], x0); % rozwi�zanie r�wnania r�niczkowego
        plot(Y(:,1), Y(:,2), 'r'); % narysowanie wykresu
    end
end
      
[x1, x2] = meshgrid(-1:0.1:1, -1:0.1:1); %nasza powierzchnia
x1dot = -x1; % 1 r�wnanie systemu
x2dot = -x2.^2; % 2 r�wnanie systemu
quiver(x1,x2,x1dot,x2dot); %narysowanie portretu fazowego systemu
title('Przyk�ad nr. 2 nieliniowy') %tytu�
xlabel('x1') % podpis osi x
ylabel('x2') % podpis osi y
axis([-1 1 -1 1]);

figure(3)
hold on;

for i=-2:0.5:2
    for j=-2:0.5:2
        x0=[i,j];
        [~,Y]=ode45(@f2_2,[0, T], x0);% rozwi�zanie r�wnania r�niczkowego
        plot(Y(:,1), Y(:,2), 'r');
    end
end

[x1, x2] = meshgrid(-1:0.1:1, -1:0.1:1); %nasza powierzchnia
x1dot = -x1; % 1 r�wnanie systemu
x2dot = x2* 0; % 2 r�wnanie systemu
quiver(x1,x2,x1dot,x2dot); %narysowanie dok�d zmierza rozwi�znie

title('Przyk�ad nr. 2 zlinearyzowany') %tytu�
xlabel('x1')
ylabel('x2')
axis([-1 1 -1 1]);

%%
% Przyk�ad 3
clear;
T = 1000; %prawy kraniec odcinka na kt�rym rozwi�zujemy r�wnanie za pomoc� ode45

figure(4)
hold on;

for i=-2:0.5:2
    for j=-2:0.5:2
        x0=[i,j];
        [TT,Y]=ode45(@f3_1,[0, T], x0);% rozwi�zanie r�wnania r�niczkowego
        plot(Y(:,1), Y(:,2), 'r');
    end
end

[x1, x2] = meshgrid(-1:0.1:1, -1:0.1:1); %nasza powierzchnia
x1dot = x2; % 1 r�wnanie systemu
x2dot = -2.*x1 -3.*(x1.^2)-x2; % 2 r�wnanie systemu
quiver(x1,x2,x1dot, x2dot, 1.2) %narysowanie portretu fazowego systemu

title('Przyk�ad nr. 3 nieliniowy') %tytu�
xlabel('x1')
ylabel('x2')
axis([-1 1 -1 1])

figure(5)
hold on

for i=-2:0.5:2
    for j=-2:0.5:2
        x0=[i,j];
        [TT,Y]=ode45(@f3_2,[0, T], x0);% rozwi�zanie r�wnania r�niczkowego
        plot(Y(:,1), Y(:,2), 'b');
    end
end

[x1, x2] = meshgrid(-1:0.2:1, -1:.2:1); %nasza powierzchnia
x1dot = x2; % 1 r�wnanie systemu
x2dot = -2.*x1 -1.*x2; % 2 r�wnanie systemu
quiver(x1,x2,x1dot, x2dot, 1.2) %narysowanie portretu fazowego systemu

title('Przyklad nr. 3 zlinearyzowany dla punktu (0,0)') %tytu�
xlabel('x1')
ylabel('x2')
axis([-1 1 -1 1])

figure(6)
hold on

for i=-2:0.5:2
    for j=-2:0.5:2
        x0=[i,j];
        [TT,Y]=ode45(@f3_3,[0, T], x0);% rozwi�zanie r�wnania r�niczkowego
        plot(Y(:,1), Y(:,2), 'b');
    end
end

%linearyzacja dla punktu (-2/3,0)
[x1, x2] = meshgrid(-2:0.5:2, -2:0.5:2); %nasza powierzchnia
x1dot = x2; %1 r�wnanie systemu
x2dot = 2.*x1 + -1.*x2; %2 r�wnanie systemu
quiver(x1,x2,x1dot, x2dot) %narysowanie portretu fazowego systemu

title('Przyklad nr. 3 zlinearyzowany dla punktu (-2/3,0)') %tytu�
xlabel('z1')
ylabel('z2')
axis([-2 2 -2 2])


figure(7)
hold on

for i=-2:0.5:2
    for j=-2:0.5:2
        x0=[i,j];
        [~,Y]=ode45(@f3_1,[0, T], x0);% rozwi�zanie r�wnania r�niczkowego
        plot(Y(:,1), Y(:,2), 'r');
        [TT,Y]=ode45(@f3_2,[0, T], x0);% rozwi�zanie r�wnania r�niczkowego
        plot(Y(:,1), Y(:,2), 'b');
    end
end
legend('Przyklad nr. 3 nieliniowy - czerwony','Przyklad nr. 3 zlinearyzowany dla punktu (0,0) - niebieski') % legenda
title('Przyklad nr. 3 nieliniowy i zlinearyzowany dla punktu (0,0)') %tytu�
xlabel('x1')
ylabel('x2')
axis([-1 1 -1 1])

figure(8)
hold on

for i=-2:0.5:2
    for j=-2:0.5:2
        x0=[i,j];
        [~,Y]=ode45(@f3_1,[0, T], x0);% rozwi�zanie r�wnania r�niczkowego
        plot(Y(:,1), Y(:,2), 'r'); %wykres systemu nieliniowego
        hold on
        [TT,Y]=ode45(@f3_3,[0, T], x0);% rozwi�zanie r�wnania r�niczkowego
        plot(Y(:,1), Y(:,2), 'b'); %wykres dla zlinearyzowanego systemu dla punktu (-2/3,0)
    end
end
legend('Przyklad nr. 3 nieliniowy - czerwony','Przyklad nr. 3 zlinearyzowany dla punktu (-2/3,0) - niebieski') % legenda
title('Przyklad nr. 3 nieliniowy i zlinearyzowany dla punktu (-2/3,0)') %tytu�
xlabel('x1') % podpis osi x
ylabel('x2')% podpis osi y
axis([-2 2 -2 2]) % obszar pokazany na wykresie


