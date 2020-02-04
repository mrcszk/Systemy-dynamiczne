%Marcin Sawczuk

% funkcja tworz¹ca oscylator Van der Pol’a
function X = vanderpol(x, eps)
    X(1,1) = x(2,1);
    X(2,1) = -x(1,1) + eps*x(2,1)*(1-x(1,1)^2);
end