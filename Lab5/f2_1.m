%Marcin Sawczuk
function result = f2_1( ~, x )
%funkcja definiuj¹ca nieliniowy system przyk³ad 2
    result = zeros(size(x));
    result(1) = -x(1);
    result(2) = -x(2)^2;
end