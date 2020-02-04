%Marcin Sawczuk
function result = f3_2( ~, x )
%funkcja definiuj¹ca system zlinearyzowany dla zerowego punktu równowagi dla przyk³adu 3
    result = zeros(size(x));
    result(1) = x(2);
    result(2) = -2*x(1)-x(2);
end