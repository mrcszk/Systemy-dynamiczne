%Marcin Sawczuk

% funkcja tworz¹ca system Lorenza
function X = lorenz(x, s, r, b)
    X(1,1) = s*(x(2,1) - x(1,1));
    X(2,1) = r*x(1,1) - x(2,1) - x(1,1)*x(3,1);
    X(3,1) = -b*x(3,1) + x(1,1)*x(2,1);
end
