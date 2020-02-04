%Marcin Sawczuk
function result = f3_1( ~, x )
%funkcja definiuj¹ca nieliniowy system przyk³ad 3
    result = zeros(size(x));
    result(1) = x(2);
    result(2) = -2 * x(1) - 3 * x(1)^2 - x(2);
end