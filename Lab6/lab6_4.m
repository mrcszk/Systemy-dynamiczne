%Marcin Sawczuk

% Zadanie 4
clear;
% wartosci czasowe
t_0 = 0; % czas poczatkowy
t_k = 10; % czas koñcowy
t_s = 1/100; % przedzial miedzy kolejnymi czasami

% interesuj¹ca trajektoria 1

% zmienne do wzoru
s = 75; 
b = 25; 
r = 50; 

figure;
hold on;
X(:,1) = [1;1;20];
T(1)=t_0;
for j=1:t_k/t_s + 1
    X(:,j+1)=X(:,j) + t_s * lorenz(X(:,j), s, r, b);
    T(j+1) = t_0 + t_s * (j);
end
plot3(X(1,:),X(2,:),X(3,:),'b'); % rysowanie wykresu

title('Interesuj¹ca trajektoria 1'); % tytu³ wykresu
xlabel('x1'); % podpis osi x
ylabel('x2'); % podpis osi y
zlabel('x3'); % podpis osi z
view([1 15 3]); % miejsce, z którego widzimy wykres
hold off;

% interesuj¹ca trajektoria 2
s=-10;
b=200;
r=80;

figure;
hold on;
X(:,1) = [1;1;20];
T(1)=t_0;
for j=1:t_k/t_s + 1
    X(:,j+1)=X(:,j) + t_s * lorenz(X(:,j), s, r, b);
    T(j+1) = t_0 + t_s * (j);
end
plot3(X(1,:),X(2,:),X(3,:),'b'); % rysowanie wykresu

title('Interesuj¹ca trajektoria 2'); % tytu³ wykresu
xlabel('x1'); % podpis osi x
ylabel('x2'); % podpis osi y
zlabel('x3'); % podpis osi z
view([1 -5 3]); % miejsce, z którego widzimy wykres
hold off;

% Interesuj¹ca trajektoria 3
s=-1;
b=5;
r=100;

figure;
hold on;
X(:,1) = [1;1;20];
T(1)=t_0;
for j=1:t_k/t_s + 1
    X(:,j+1)=X(:,j) + t_s * lorenz(X(:,j), s, r, b);
    T(j+1) = t_0 + t_s * (j);
end
plot3(X(1,:),X(2,:),X(3,:),'b');

title('Interesuj¹ca trajektoria 3'); % tytu³ wykresu
xlabel('x1'); % podpis osi x
ylabel('x2'); % podpis osi y
zlabel('x3'); % podpis osi z
view([250 -900 550]); % miejsce, z którego widzimy wykres
hold off;

